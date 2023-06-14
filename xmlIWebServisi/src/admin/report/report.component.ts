import { Component } from '@angular/core';
import { LoginRegisterService } from 'src/app/login-register.service';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrls: ['./report.component.css']
})
export class ReportComponent {
  startDate:String = "";
  endDate:String = "";

  constructor(private service:LoginRegisterService){}

  generateReport(type:String){
    this.service.report(type,this.startDate, this.endDate)
    .subscribe({
      next:(value) =>{
        var url;
        if(type === "zig"){
          url = "http://localhost:9000/trademark/downloadPDF/izvestaj";
        }
        else if(type ==="autorska"){
          url = "http://localhost:9001/copyright/downloadPDF/izvestaj";

        }
        else{
          url = "http://localhost:9002/patent/downloadPDF/izvestaj";

        }

        window.open(url);
      },
      error:(err)=>{
        console.log("ERROR!");
      }
    })
  }

}
