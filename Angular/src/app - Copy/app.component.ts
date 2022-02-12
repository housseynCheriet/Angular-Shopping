import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';//new
//import { FormGroup, FormControl, Validators} from '@angular/forms';//new
import { FormBuilder } from "@angular/forms";//new
import {TranslateService} from '@ngx-translate/core';//new

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
/*export class AppComponent {
  title = 'shop';    
  ang='test';  
  data:any;//new
  constructor(private http: HttpClient){//new
 
  console.log('++++++++++++++')
    this.http.get('http://localhost:3000/api/chirps').subscribe((data : any) => {
    //this.data = data['obj'];   
    console.log(data); 
    }, error => console.error(error));
}

}
*/

export class AppComponent {
  title = 'shop';    
  ang='test';  
  data:any;//new

  constructor(public translate: TranslateService,public fb: FormBuilder) {
    translate.addLangs(['en', 'tr']);
    translate.setDefaultLang('en');
    translate.use('en');
  };
  //constructor(public fb: FormBuilder) { }
  
  main:any={
  food:{Meat:[
    {name:'Steacks',image:'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_steakhouse.jpg',},
    {name:'Ground',image:'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/bground.jpg'},
    {name:'Burgers',image:'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_grnd_bgr.jpg'},
    {name:'Pre-Cut',image:'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_stew_cb_strps.jpg'},
    {name:'Roasts',image:'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_prem_rsts.jpg'}
    ],
    Fruit:[
    {name:'Appels',image:'https://www.freshdirect.com/media/images/product/fruit_3/fru_pid_2210362_z.jpg',},
    {name:'Avocados',image:'https://www.freshdirect.com/media/images/product/veg_1/veg_fd_fgavcrdypk_z.jpg'},
    {name:'Bananas',image:'https://www.freshdirect.com/media/images/product/fruit_3/fru_pid_2210788_z.jpg'},
    {name:'Citrus',image:'https://www.freshdirect.com/media/images/product/fruit_2/orng_rednavel_z.jpg'},
    {name:'Grapes',image:'https://www.freshdirect.com/media/images/product/fruit_3/grp_grnsdls_z.jpg'}
    ],
    Vegetables:[
    {name:'Carrots',image:'https://www.freshdirect.com/media/images/product/veg_3/orgveg_carrot_bnch_z.jpg'},
    {name:'Cucumbers',image:'https://www.freshdirect.com/media/images/product/veg_3/cuc_grn_or_z.jpg'},
    {name:'Eggplant',image:'https://www.freshdirect.com/media/images/product/veg_1/egplnt_ital_z.jpg'},
    {name:'Lettuce',image:'https://www.freshdirect.com/media/images/product/veg_3/ltc_grnlf_or_z.jpg'},
    {name:'Peppers',image:'https://www.freshdirect.com/media/images/product/vegetables/peppers/veg_pep_srnopkg_z.jpg'}
    ]
  
  }

};
  test: any = ['Appels','Avocados','Bananas'];
  mainCategory: any = ['Meat', 'Fruit', 'Vegetables'];
  subCategory: any = ['noooo'];
  oppoSuitsForm = this.fb.group({
    name: []
  })
  //oppoSuitsForm2 = this.fb.group({})
  onSubmit() {
    alert(this.oppoSuitsForm.value['name']);
    if(this.oppoSuitsForm.value['name']=='Fruit'){
      this.subCategory=this.test;
    }
    alert(JSON.stringify(this.oppoSuitsForm.value))
  }
  switchLanguage(lang:string){
    this.translate.use(lang)
  }
}