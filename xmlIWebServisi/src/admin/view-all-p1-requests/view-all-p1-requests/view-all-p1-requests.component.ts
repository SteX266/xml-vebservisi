import { Component } from '@angular/core';
import { PatentRequestDTO } from 'src/app/model/p1/PatentRequestDTO';
import { P1Service } from 'src/app/p1/p1.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-view-all-p1-requests',
  templateUrl: './view-all-p1-requests.component.html',
  styleUrls: ['./view-all-p1-requests.component.css']
})
export class ViewAllP1RequestsComponent {
  constructor(private service : P1Service,private location: Location) {}
  tableData: PatentRequestDTO[] = [];

  displayedColumns: string[] = [
    'ime',
    'prezime',
    'srpski_naziv',
    'engleski_naziv',
    'detalji',
    'prihvati',
    'odbi',
    'preuzmi',
  ];

  public viewDetails(a: string) {
    alert(a);
  }

  ngOnInit(): void {
    this.service.getZahtevi().subscribe({
      next: async (xml) => {
        this.tableData = this.service.parseString(xml);
      },
    });
    
  }

  public Accept(id: string) {
    this.service.AcceptRequest(id, '').subscribe();
  }

  public Decline(id: string) {
    this.service.DeclineRequest(id, '').subscribe();
  }

  public Print(id: string) {
    this.service.Print(id).subscribe();
  }


  public generatePdf(id: String) {
    this.service.generateDocuments(id).subscribe({next:(value)=>{
      window.open("http://localhost:9002/patent/downloadPDF/" + id);
    }});
  }
  
  public generateHtml(id: String) {
    this.service.generateDocuments(id).subscribe({next:(value)=>{
      window.open("http://localhost:9002/patent/downloadHTML/" + id);
    }});
  }

}
