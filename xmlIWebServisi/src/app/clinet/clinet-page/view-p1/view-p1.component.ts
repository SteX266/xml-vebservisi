import { Component } from '@angular/core';
import { PatentRequestDTO } from 'src/app/model/p1/PatentRequestDTO';
import { P1Service } from 'src/app/p1/p1.service';

@Component({
  selector: 'app-view-p1',
  templateUrl: './view-p1.component.html',
  styleUrls: ['./view-p1.component.css']
})
export class ViewP1Component {


  constructor(private service : P1Service) {}
  tableData: PatentRequestDTO[] = [];
  searchQuery:string = "";
  displayedColumns: string[] = [
    'ime',
    'prezime',
    'srpski_naziv',
    'engleski_naziv',
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


  public Print(id: string) {
    this.service.Print(id).subscribe();
  }

  
  public search(){

    this.service.search(this.searchQuery).subscribe({
      next: async (xml) => {
        this.tableData = this.service.parseString(xml);
      },
    });
  }

}
