import { Component } from '@angular/core';
import { Prijava } from 'src/app/model/Prijava';
import { ZigService } from 'src/app/z1/zig.service';

@Component({
  selector: 'app-view-z1',
  templateUrl: './view-z1.component.html',
  styleUrls: ['./view-z1.component.css']
})
export class ViewZ1Component {
  constructor(private service: ZigService) {}

  tableData: Prijava[] = [];
  searchQuery:string = "";
  displayedColumns: string[] = [
    'ime',
    'prezime',
    'tip_ziga',
    'opis_znaka',
    'detalji',
    'preuzmi',
  ];

  public viewDetails(a: string) {
    alert(a);
  }

  ngOnInit(): void {
    this.service.getOdobreni().subscribe({
      next: async (xml) => {
        this.tableData = this.service.parseString(xml);
      },
    });
  }

  public Print(id: String) {
    this.service.generateDocuments(id).subscribe();
    window.open("http://localhost:9000/trademark/downloadPDF/" + id);
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

  
  public search(){

    this.service.search(this.searchQuery).subscribe({
      next: async (xml) => {
        this.tableData = this.service.parseString(xml);
      },
    });

  }

}


