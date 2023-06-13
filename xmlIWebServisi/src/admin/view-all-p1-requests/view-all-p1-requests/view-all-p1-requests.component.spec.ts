import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllP1RequestsComponent } from './view-all-p1-requests.component';

describe('ViewAllP1RequestsComponent', () => {
  let component: ViewAllP1RequestsComponent;
  let fixture: ComponentFixture<ViewAllP1RequestsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewAllP1RequestsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ViewAllP1RequestsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
