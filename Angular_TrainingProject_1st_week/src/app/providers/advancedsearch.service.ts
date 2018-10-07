import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AdvancedSearchService {

  constructor(private http: HttpClient) { }


  public optionValue : any;
  public user_id : any;

  public advancesearchValues(title:String,city:String,education:String,rating:String,rates:String):Promise<String[]>{
    return this.http.get<String[]>('http://localhost:3000/advancedsearch/search?title='+title+'&city='+city+'&education='+education+'&rating='+rating+'rates='+rates).toPromise();
  }
}
