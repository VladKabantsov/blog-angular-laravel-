import {AfterContentInit, AfterViewChecked, AfterViewInit, Component, DoCheck, Input, OnInit} from '@angular/core';
import {ArticleService} from '../service/article.service';
import { Article } from '../interface/article.interface'
import {ActivatedRoute} from '@angular/router';
import {CommentsComponent} from '../comments/comments.component';
import {Comment} from '../interface/comment.interface';
import {Observable} from 'rxjs/Observable';
import index from '@angular/cli/lib/cli';
import {ApiService} from '../service/api.service';

@Component({
  selector: 'app-show-article',
  templateUrl: './show-article.component.html',
  styleUrls: ['./show-article.component.css'],
})
export class  ShowArticleComponent implements OnInit{

  article: Article;
  comments: Comment[];
  @Input() comment: Comment;
  id: number;

  constructor(protected articleService: ArticleService,
              protected activateRoute: ActivatedRoute,
              protected apiService: ApiService)
  {
    this.id = activateRoute.snapshot.params['id'];
  }

  ngOnInit()
  {
    this.getArticle(this.id);
  }

  getArticle(id: number) {
    if (this.articleService.articles !== undefined) {
      let num=0;
      for (let entry of this.articleService.articles) {
        if (this.id == entry.id) {
          this.articleService.article = this.articleService.articles[num];
          return this.article = this.articleService.articles[num];
        }
        num++;
      }
    } else {

      return this.apiService.show(this.articleService.resource, id)
        .subscribe(article => {this.article = article.json(), this.articleService.article = article.json()});
    }
  }


}
