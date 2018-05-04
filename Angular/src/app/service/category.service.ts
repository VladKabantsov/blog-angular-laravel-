import { Injectable } from '@angular/core';
import {Http, Response} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import {environment} from '../../environments/environment';
import {ApiService} from './api.service';
import {Category} from '../interface/category.interface';

@Injectable()
export class CategoryService {

  resource = '/categories';
  categories: Category[];

  constructor(protected http: Http,
              protected apiService: ApiService) { }

  getAllCategories() {

    return this.apiService.index(this.resource)
      .subscribe(categories => {
        this.categories = categories.json();
      });
  }

}
