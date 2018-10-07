import { Component, OnInit,Inject } from '@angular/core';
import{Router,ActivatedRoute} from '@angular/router';
import {SearchService} from '../providers/search.service';
import {AdvancedSearchService} from '../providers/advancedsearch.service';
import { DOCUMENT } from '@angular/common'; 
@Component({
  selector: 'app-advancedsearchbar',
  templateUrl: './advancedsearchbar.component.html',
  styleUrls: ['./advancedsearchbar.component.css']
})
export class AdvancedsearchbarComponent implements OnInit {
  document : any;
  values : any;
  city: String;
  jobTitle:String;
  employees:any[];
  constructor(private route:Router, private router :ActivatedRoute,private searchService: SearchService,@Inject(DOCUMENT) document, private advancedSearchService: AdvancedSearchService ) {
    this.document=document;
    this.city = this.searchService.searchCity;
    this.jobTitle = this.searchService.searchTitle;
    this.employees = this.searchService.optionValue;
   }

  ngOnInit() {
   console.log(this.city);
   console.log(this.jobTitle);
   console.log(this.searchService.optionValue);
  }

  private advanceSearch(){
    this.advancedSearchService.advancesearchValues(this.jobTitle,this.city,this.document.getElementById('selectEducation'),this.document.getElementById('selectRating'),this.document.getElementById('selectRates')).then(optionValues => {
      console.log(optionValues);
      
    })
  }
  private viewprofile(user_id){
    console.log(user_id);
    this.advancedSearchService.user_id=user_id;
    this.route.navigate(['view']);
          
      
   
  }

}
