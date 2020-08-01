import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SmarttreeComponent } from './smarttree.component';

describe('SmarttreeComponent', () => {
  let component: SmarttreeComponent;
  let fixture: ComponentFixture<SmarttreeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SmarttreeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SmarttreeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
