import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClinetNavbarComponent } from './clinet-navbar.component';

describe('ClinetNavbarComponent', () => {
  let component: ClinetNavbarComponent;
  let fixture: ComponentFixture<ClinetNavbarComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ClinetNavbarComponent]
    });
    fixture = TestBed.createComponent(ClinetNavbarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
