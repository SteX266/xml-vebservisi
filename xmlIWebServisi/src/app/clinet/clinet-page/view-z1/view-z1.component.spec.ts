import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewZ1Component } from './view-z1.component';

describe('ViewZ1Component', () => {
  let component: ViewZ1Component;
  let fixture: ComponentFixture<ViewZ1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewZ1Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ViewZ1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
