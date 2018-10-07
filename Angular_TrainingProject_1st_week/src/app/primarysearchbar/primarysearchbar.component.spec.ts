import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PrimarysearchbarComponent } from './primarysearchbar.component';

describe('PrimarysearchbarComponent', () => {
  let component: PrimarysearchbarComponent;
  let fixture: ComponentFixture<PrimarysearchbarComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PrimarysearchbarComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PrimarysearchbarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
