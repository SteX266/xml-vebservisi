import { Component } from '@angular/core';
import { AService } from 'src/app/a1/a1-create-form/a.service';
import { CopyrightRequestDTO } from 'src/app/model/a1/CopyrightRequestDTO';

@Component({
  selector: 'app-view-a1',
  templateUrl: './view-a1.component.html',
  styleUrls: ['./view-a1.component.css']
})
export class ViewA1Component {
  constructor(private service : AService) {}
  tableData: CopyrightRequestDTO[] = [];
  searchQuery:string = "";

  displayedColumns: string[] = [
    'ime',
    'prezime',
    'naziv_dela',
    'vrsta_dela',
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
        console.log(this.tableData[0].namenaDela)
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

