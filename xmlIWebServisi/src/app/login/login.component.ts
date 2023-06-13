import { Component } from '@angular/core';
import { LoginRegisterService } from '../login-register.service';
import { LoginDTO } from '../model/loginRegister/LoginDTO';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
})
export class LoginComponent {
  loginDTO: LoginDTO = new LoginDTO();
  wrong = false;
  constructor(private service: LoginRegisterService,   private router: Router) {}


  
  validateInputData():boolean {
    if (this.loginDTO.email === "" || this.loginDTO.password === ""){
      return false;
    }
    return true;

  }



  login() {
    if(this.validateInputData()){
    this.service
      .login(this.loginDTO)
      .subscribe({
        next: (value) => {
          if (value) {
            this.service.saveCurrentUserEmail(value.email);
            this.service.saveCurrentUserRole(value.userRole);
            this.Redirect(value.userRole);
          } 
          else {
            this.wrong = true;
          }
        },
        error: (err) => {
          this.wrong = true;
        },
      });
    }
    else{
      this.wrong = true;
    }
  }

  Redirect(userRole: string) {
    let route = '/' + userRole.toLowerCase();
    this.router.navigate([route]);
  }
}
