import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';    
import { HttpClient, HttpClientModule } from '@angular/common/http';//new
import { FormsModule, ReactiveFormsModule } from '@angular/forms';//new
import {TranslateLoader, TranslateModule} from '@ngx-translate/core';//new
import {TranslateHttpLoader} from '@ngx-translate/http-loader';//new


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,//new
    FormsModule,//new
    ReactiveFormsModule ,//new
        TranslateModule.forRoot({//new
            loader: {
                provide: TranslateLoader,
                useFactory: HttpLoaderFactory,
                deps: [HttpClient]
            }
        })

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
export function HttpLoaderFactory(http: HttpClient) {//new
    return new TranslateHttpLoader(http);
}