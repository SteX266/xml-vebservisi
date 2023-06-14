import { Component } from '@angular/core';
import { Location } from '@angular/common';
import { ZigService } from 'src/app/z1/zig.service';
import { Prijava } from 'src/app/model/Prijava';

export interface TableData {
  ime: string;
  prezime: string;
  tip_ziga: string;
  opis_znaka: string;
  sifraZahteva: string;
}

@Component({
  selector: 'app-view-all-z1-requests',
  templateUrl: './view-all-z1-requests.component.html',
  styleUrls: ['./view-all-z1-requests.component.css'],
})
export class ViewAllZ1RequestsComponent {
  constructor(private service: ZigService, private location: Location) {}

  tableData: Prijava[] = [];

  displayedColumns: string[] = [
    'ime',
    'prezime',
    'tip_ziga',
    'opis_znaka',
    'detalji',
    'prihvati',
    'odbi',
    'preuzmi',
  ];



  ngOnInit(): void {
    this.service.getZahtevi().subscribe({
      next: async (xml) => {
        this.tableData = this.service.parseString(xml);
      },
    });
  }

  public Accept(id: string) {
    this.service.AcceptRequest(id, '').subscribe();
    this.tableData = this.tableData.filter(item => item.sifraZahteva !== id);
  }

  public Decline(id: string) {
    this.service.DeclineRequest(id, '').subscribe();
    this.tableData = this.tableData.filter(item => item.sifraZahteva !== id);
  }

  public generatePdf(id: String) {
    this.service.generateDocuments(id).subscribe({next:(value)=>{
      window.open("http://localhost:9000/trademark/downloadPDF/" + id);
    }});
  }
  
  public generateHtml(id: String) {
    this.service.generateDocuments(id).subscribe({next:(value)=>{
      window.open("http://localhost:9000/trademark/downloadHTML/" + id);
    }});
  }
  public Refresh(): void {
    this.location.go(this.location.path());
  }
}


