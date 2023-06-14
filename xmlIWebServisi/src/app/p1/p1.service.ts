import { Injectable } from '@angular/core';
import { PatentRequestDTO } from '../model/p1/PatentRequestDTO';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import * as JsonToXML from 'js2xmlparser';
import { Decision } from '../model/Decision';
import { CopyrightRequestDTO } from '../model/a1/CopyrightRequestDTO';

import * as Parser from 'xml-js';

@Injectable({
  providedIn: 'root',
})
export class P1Service {
  constructor(private _http: HttpClient) {}
  url = 'http://localhost:9002/patent/';

  parseString(xml: string): PatentRequestDTO[] {
    let prijave:  PatentRequestDTO[] = [];
    let result:string= Parser.xml2json(xml, { compact: true });
  
    let res = JSON.parse(result);
    if (Array.isArray(res['List']['item'])){
      let p : PatentRequestDTO = new PatentRequestDTO();
    for (let user of res.List.item){
      if(user['zahtev']['podnosilacPrijave']['ime'] === undefined){ 
        p.podnosilacPrijave.ime = user['zahtev']['podnosilacPrijave']['naziv']['_text']
     }
     else{
       p.podnosilacPrijave.ime = user['zahtev']['podnosilacPrijave']['ime']['_text'];
       p.podnosilacPrijave.prezime = user['zahtev']['podnosilacPrijave']['prezime']['_text'];
       }
       p.nazivPronalaska.srpskiNaziv = user['zahtev']['nazivPronalaska']['srpskiNaziv']['_text'];
       p.nazivPronalaska.engleskiNaziv = user['zahtev']['nazivPronalaska']['engleskiNaziv']['_text'];
       p.potpis = user['detaljiPrijave']['brojPrijave']['_text'];
       if(p.podnosilacPrijave.ime === ''){
         p.podnosilacPrijave.ime = user['zahtev']['podnosilacPrijave']['naziv']['_text']
       }
 
     prijave.push(p);
   }
  }
  else{
    let user = res['List']['item']
    let p: PatentRequestDTO = new PatentRequestDTO();
    if(user['zahtev']['podnosilacPrijave']['ime'] === undefined){ 
       p.podnosilacPrijave.ime = user['podnosilacPrijave']['naziv']['_text']
    }
    else{
      p.podnosilacPrijave.ime = user['zahtev']['podnosilacPrijave']['ime']['_text'];
      p.podnosilacPrijave.prezime = user['zahtev']['podnosilacPrijave']['prezime']['_text'];
      }
      p.nazivPronalaska.srpskiNaziv = user['zahtev']['nazivPronalaska']['srpskiNaziv']['_text'];
      p.nazivPronalaska.engleskiNaziv = user['zahtev']['nazivPronalaska']['engleskiNaziv']['_text'];
      p.potpis = user['detaljiPrijave']['brojPrijave']['_text'];
      if(p.podnosilacPrijave.ime === ''){
        p.podnosilacPrijave.ime = user['zahtev']['podnosilacPrijave']['naziv']['_text']
      }

    prijave.push(p);
  }
    return prijave;
  }


  sendRequest(prijava: PatentRequestDTO) {
    const xml = JsonToXML.parse('patentPrijava', prijava);
    const url = this.url + 'createRequest';
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }

  generateDocuments(id: String) {
    const xml = JsonToXML.parse('broj', id);
    const url = this.url + 'createDocuments/' + id;
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }

  getZahtevi() {
    return this._http.get(this.url + 'getAllUnanswered', {
      headers: new HttpHeaders().set('Content-Type', 'application/xml'),
      responseType: 'text',
    });
  }

  Print(id: string) {
    const xml = JsonToXML.parse('broj', id);
    const url = this.url + 'print';
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }
  DeclineRequest(id: string, obrazlozenje: string) {
    let d: Decision = new Decision(id, obrazlozenje, false);
    const xml = JsonToXML.parse('decision', d);
    const url = this.url + 'handleRequest';
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }


  AcceptRequest(id: string, obrazlozenje: string) {
    let d: Decision = new Decision(id, obrazlozenje, true);
    const xml = JsonToXML.parse('decision', d);
    const url = this.url + 'handleRequest';
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }

  getOdobreni() {
    return this._http.get(this.url + 'getAllApproved', {
      headers: new HttpHeaders().set('Content-Type', 'application/xml'),
      responseType: 'text',
    });
  }

  search(q:string){
    return this._http.get(this.url + 'search/'+q, {
      headers: new HttpHeaders().set('Content-Type', 'application/xml'),
      responseType: 'text',
    });

}
}
