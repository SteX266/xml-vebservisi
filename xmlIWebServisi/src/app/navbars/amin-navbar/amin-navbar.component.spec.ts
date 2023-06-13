import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AminNavbarComponent } from './amin-navbar.component';

describe('AminNavbarComponent', () => {
  let component: AminNavbarComponent;
  let fixture: ComponentFixture<AminNavbarComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AminNavbarComponent]
    });
    fixture = TestBed.createComponent(AminNavbarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
