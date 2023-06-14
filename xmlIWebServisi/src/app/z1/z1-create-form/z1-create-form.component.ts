import { Component } from '@angular/core';
import {Prijava} from '../../model/Prijava';
import { ZigService } from '../zig.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-z1-create-form',
  templateUrl: './z1-create-form.component.html',
  styleUrls: ['./z1-create-form.component.css']
})
export class Z1CreateFormComponent {
  constructor(private service : ZigService,private router: Router) {}

  prijava: Prijava = new Prijava();
  podnosilacLice: string = 'Fizicko lice';
  punomocnikLice: string = 'Fizicko lice';
  treceLice: string = 'Fizicko lice';
  ostalo:string = '';
  boje:string ='';
  nicanska:string =''


  sendRequest(){
    this.prijava.informacijeOZigu.nicanskaKlasifikacija.klasa = this.nicanska.split(",").map(Number);
    this.prijava.informacijeOZigu.bojeZnaka.boja = this.boje.split(",");
    if (this.ostalo !== ""){
      this.prijava.informacijeOZigu.tipZnaka = this.ostalo;
    }

    this.service.sendRequest(this.prijava).subscribe();
    this.router.navigate(['/korisnik']); // Replace '/new-route' with the actual path of the route you want to navigate to


  }

}
