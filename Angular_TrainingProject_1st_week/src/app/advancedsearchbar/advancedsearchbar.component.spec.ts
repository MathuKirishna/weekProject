import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdvancedsearchbarComponent } from './advancedsearchbar.component';

describe('AdvancedsearchbarComponent', () => {
  let component: AdvancedsearchbarComponent;
  let fixture: ComponentFixture<AdvancedsearchbarComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdvancedsearchbarComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdvancedsearchbarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
