import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';//new
//import { FormGroup, FormControl, Validators} from '@angular/forms';//new
//import { FormBuilder } from "@angular/forms";//new
import {TranslateService} from '@ngx-translate/core';//new

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})


export class AppComponent {
  title = 'shop';    
  visibility: boolean = false;
  mainCategory: any;
  subCategory: any;
  products: any;
  
  mainId: string ='1';
  subId: string ='1';


  constructor(public translate: TranslateService,public http: HttpClient) {
    translate.addLangs(['en','tr','ar']);
    translate.setDefaultLang('en');
    //translate.use('tr');
    this.http.get('http://localhost:3000/mainCategory?mainId='+this.mainId).subscribe((data : any) => {

    this.visibility=true;
    console.log(data); 
    this.mainCategory=data[0];
    this.subCategory=data[1];
    this.products=data[2];
    }, error => console.error(error));

  };
  switchMainCategory(mainId:string){

    //alert(mainId)
    this.mainId = mainId;
    this.subId = '1';
    this.visibility=false;
    this.http.get('http://localhost:3000/subCategory?mainId='+this.mainId).subscribe((data : any) => {

    this.visibility=true;
    console.log(data); 
    this.subCategory=data[0];
    this.products=data[1];
    }, error => console.error(error));
    //this.switchSubCategory(this.subId,true)
  }
  switchSubCategory(subId:string){

    //alert(subId)
    this.subId=subId;
    this.visibility=false;
    this.http.get('http://localhost:3000/product?mainId='+this.mainId+'&subId='+this.subId).subscribe((data : any) => {
    
    //console.log('////////////');
    this.visibility=true;
    console.log(data); 
    this.products=data; 
    }, error => console.error(error));
  }
  switchLanguage(lang:string){
    //alert(lang)
    this.translate.use(lang)
  }
}