import {Component, DoCheck, OnInit} from '@angular/core';

import {Article} from '../interface/article.interface';
import {ArticleService} from '../service/article.service';
import {ApiService} from '../service/api.service';

@Component({
  selector: 'app-articles',
  templateUrl: './articles.component.html',
  styleUrls: ['./articles.component.css']
})
export class ArticlesComponent implements OnInit, DoCheck {

  articles: Article[];
  article: Article;

  previousPg = true;
  nextPg = false;

  constructor(protected articleService: ArticleService,
              protected apiService: ApiService) {
  }

  ngOnInit() {
    this.articleService.getArticles();
  }

  ngDoCheck() {
    this.articles = this.articleService.articles;
  }

  nextPage() {

    this.articleService.currentPage++;
    this.checkButton();
  }

  previousPage() {

    this.articleService.currentPage--;
    this.checkButton();
  }

  checkButton() {

    if (this.articleService.currentPage === 0) {

      this.previousPg = true;
    } else if (this.articleService.currentPage === this.articleService.lastPage-1) {

      this.nextPg = true;
    } else {

      this.previousPg = false;
      this.nextPg = false;
    }

    this.articleService.getArticles();
  }



}

