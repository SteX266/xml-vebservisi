import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClinetPageComponent } from './clinet-page.component';

describe('ClinetPageComponent', () => {
  let component: ClinetPageComponent;
  let fixture: ComponentFixture<ClinetPageComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ClinetPageComponent]
    });
    fixture = TestBed.createComponent(ClinetPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
