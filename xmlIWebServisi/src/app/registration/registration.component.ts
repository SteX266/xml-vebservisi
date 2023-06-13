import { Component } from '@angular/core';
import { RegisterDTO } from '../model/loginRegister/RegisterDTO';
import { LoginRegisterService } from '../login-register.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.css'],
})
export class RegistrationComponent {
  registerDto: RegisterDTO = new RegisterDTO();
  wrong = false;

  constructor(private service: LoginRegisterService, private router:Router) {}

  register() {

    this.service.register(this.registerDto).subscribe({
      next: (value) => {
      if (value) {
        this.service.saveCurrentUserEmail(this.registerDto.email);
        this.service.saveCurrentUserRole("KORISNIK");
        this.Redirect();
      } 
      else {
        this.wrong = true;
      }
    },
    error: (err) => {
      this.wrong = true;
    },})
  }


  Redirect() {
    let route = '/korisnik';
    this.router.navigate([route]);
  }
}
