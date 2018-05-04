import {Component, Injectable, OnInit} from '@angular/core';
import { NgForm } from '@angular/forms';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/toPromise';
import {ArticleService} from './service/article.service';
import { Article } from './interface/article.interface';

@Injectable()
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit
{
  articles: Article[];

  constructor(protected articleService: ArticleService) { }

  ngOnInit()
  {
  }

}

