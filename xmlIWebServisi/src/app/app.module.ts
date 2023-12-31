
import { AppComponent } from './app.component';
import { A1CreateFormComponent } from './a1/a1-create-form/a1-create-form.component';
import { Z1CreateFormComponent } from './z1/z1-create-form/z1-create-form.component';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { ViewAllZ1RequestsComponent } from 'src/admin/view-all-z1-requests/view-all-z1-requests.component';

import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatTableModule } from '@angular/material/table';
import { MatButtonModule } from '@angular/material/button'
import { ViewAllA1RequestsComponent } from 'src/admin/view-all-a1-requests/view-all-a1-requests.component';
import { DetailA1Component } from 'src/admin/detail-a1/detail-a1.component';
import { DetailZ1Component } from 'src/admin/detail-z1/detail-z1.component';
import { LoginComponent } from './login/login.component';
import { RegistrationComponent } from './registration/registration.component';
import { P1CreateFormComponent } from './p1/p1-create-form/p1-create-form.component';
import { ClinetNavbarComponent } from './navbars/clinet-navbar/clinet-navbar.component';
import { AminNavbarComponent } from './navbars/amin-navbar/amin-navbar.component';
import { GuestNavbarComponent } from './navbars/guest-navbar/guest-navbar.component';
import { GuestPageComponent } from './guest/guest-page/guest-page.component';
import { ClinetPageComponent } from './clinet/clinet-page/clinet-page.component';
import { AdminPageComponent } from 'src/admin/admin-page/admin-page.component';
import { ViewAllP1RequestsComponent } from 'src/admin/view-all-p1-requests/view-all-p1-requests/view-all-p1-requests.component';
import { ViewA1Component } from './clinet/clinet-page/view-a1/view-a1.component';
import { ViewP1Component } from './clinet/clinet-page/view-p1/view-p1.component';
import { ViewZ1Component } from './clinet/clinet-page/view-z1/view-z1.component';
import { ReportComponent } from 'src/admin/report/report.component';

@NgModule({
  declarations: [
    AppComponent,
    A1CreateFormComponent,
    Z1CreateFormComponent,
    ViewAllZ1RequestsComponent,
    ViewAllA1RequestsComponent,
    DetailA1Component,
    DetailZ1Component,
    LoginComponent,
    RegistrationComponent,
    P1CreateFormComponent,
    ClinetNavbarComponent,
    AminNavbarComponent,
    GuestNavbarComponent,
    GuestPageComponent,
    ClinetPageComponent,
    AdminPageComponent,
    ViewAllP1RequestsComponent,
    ViewA1Component,
    ViewP1Component,
    ViewZ1Component,
    ReportComponent,
  

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule ,
    CommonModule,
    HttpClientModule,
    BrowserModule,
    BrowserAnimationsModule,
    MatTableModule,
    MatButtonModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
