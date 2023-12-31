import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { Z1CreateFormComponent } from './z1/z1-create-form/z1-create-form.component';
import { A1CreateFormComponent } from './a1/a1-create-form/a1-create-form.component';
import { ViewAllA1RequestsComponent } from 'src/admin/view-all-a1-requests/view-all-a1-requests.component';
import { ViewAllZ1RequestsComponent } from 'src/admin/view-all-z1-requests/view-all-z1-requests.component';
import { LoginComponent } from './login/login.component';
import { RegistrationComponent } from './registration/registration.component';
import { P1CreateFormComponent } from './p1/p1-create-form/p1-create-form.component';
import { GuestPageComponent } from './guest/guest-page/guest-page.component';
import { AdminPageComponent } from 'src/admin/admin-page/admin-page.component';
import { ClinetPageComponent } from './clinet/clinet-page/clinet-page.component';
import { GuestNavbarComponent } from './navbars/guest-navbar/guest-navbar.component';
import { ClinetNavbarComponent } from './navbars/clinet-navbar/clinet-navbar.component';
import { AminNavbarComponent } from './navbars/amin-navbar/amin-navbar.component';
import { ViewAllP1RequestsComponent } from 'src/admin/view-all-p1-requests/view-all-p1-requests/view-all-p1-requests.component';
import { ViewZ1Component } from './clinet/clinet-page/view-z1/view-z1.component';
import { ViewP1Component } from './clinet/clinet-page/view-p1/view-p1.component';
import { ViewA1Component } from './clinet/clinet-page/view-a1/view-a1.component';
import { ReportComponent } from 'src/admin/report/report.component';

const routes: Routes = [
  { path: 'guest', component: GuestNavbarComponent,
    children: [{ path: 'login', component: LoginComponent },
    { path: 'registration', component: RegistrationComponent },
    ]},
  { path: 'korisnik', component: ClinetNavbarComponent,
    children:[ { path: 'z1', component: Z1CreateFormComponent },
    { path: 'p1', component: P1CreateFormComponent },
    { path: 'a1', component: A1CreateFormComponent },
    { path: 'viewZ1', component: ViewZ1Component },
    { path: 'viewP1', component: ViewP1Component },
    { path: 'viewA1', component: ViewA1Component },
    ]},
  { path: 'admin', component: AminNavbarComponent,children:[
    { path: 'viewA1', component: ViewAllA1RequestsComponent },
    { path: 'viewZ1', component: ViewAllZ1RequestsComponent },
    { path: 'viewP1', component: ViewAllP1RequestsComponent },
    { path:'report',  component: ReportComponent},
    ]},
  { path: '', component: GuestPageComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
