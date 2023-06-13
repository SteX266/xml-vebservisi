import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewP1Component } from './view-p1.component';

describe('ViewP1Component', () => {
  let component: ViewP1Component;
  let fixture: ComponentFixture<ViewP1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewP1Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ViewP1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
