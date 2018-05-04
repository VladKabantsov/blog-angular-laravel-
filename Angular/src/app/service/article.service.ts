import {Injectable} from '@angular/core';
import {Http, Response, Headers} from '@angular/http';
import 'rxjs/Rx';
import {Observable} from 'rxjs/Observable';
import {Article} from '../interface/article.interface';
import {CommentService} from './comment.service';
import {HttpClientModule} from '@angular/common/http';
import {HttpClient} from '@angular/common/http';
import {environment} from '../../environments/environment';
import {ApiService} from './api.service';

@Injectable()
export class ArticleService {

  articles: Article[];
  article: Article;
  resource = '/articles';
  pageSize = 5;
  currentPage = 0;
  lastPage;
  skipPage = this.currentPage*this.pageSize;

  constructor(protected http: Http,
              protected apiService: ApiService) {

  }

  getArticles(option?: string) {

    this.skipPage = this.currentPage*this.pageSize;

    if (typeof option == 'undefined') option = '';

    return this.apiService.index(this.resource,
      '?size=' + this.pageSize + '&skip=' + this.skipPage + option)
      .subscribe(data => {
          this.articles = data.json().articles;
          this.lastPage = Math.round(data.json().count/this.pageSize);
      });
  }

}
