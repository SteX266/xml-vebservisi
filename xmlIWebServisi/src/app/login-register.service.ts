import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { LoginDTO } from './model/loginRegister/LoginDTO';
import * as JsonToXML from 'js2xmlparser';
import { RegisterDTO } from './model/loginRegister/RegisterDTO';
@Injectable({
  providedIn: 'root',
})
export class LoginRegisterService {
  constructor(private _http: HttpClient) {}
  url = 'http://localhost:9003/auth/';

  public saveCurrentUserRole(role: string) {
    localStorage.setItem('currentUserRole', role);
  }

  public saveCurrentUserEmail(email: string) {
    localStorage.setItem('currentUserEmail', email);
  }

  public saveCurrentUserId(id: string) {
    localStorage.setItem('currentUserId', id);
  }
  public getCurrentUserRole(): string {
    return localStorage.getItem('currentUserRole') || '';
  }
  public getCurrentUserEmail(): string {
    return localStorage.getItem('currentUserEmail') || '';
  }

  logout() {
    window.location.href = '/guest';
  }

  login(prijava: LoginDTO) {
    const xml = JsonToXML.parse('login', prijava);
    const url = this.url + 'login';
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }

  
  register(registration: RegisterDTO) {
    const xml = JsonToXML.parse('register', registration);
    const url = this.url + 'register';
    return this._http.post<any>(url, xml, {
      headers: new HttpHeaders({
        'Content-Type': 'application/xml',
        'Access-Control-Allow-Origin': '*',
        responseType: 'text',
      }),
    });
  }
}
