import {Component, Input, OnInit} from '@angular/core';
import {Category} from '../../interface/category.interface';
import {ApiService} from '../../service/api.service';
import {ActivatedRoute, Router} from '@angular/router';
import {Article} from '../../interface/article.interface';
import {ArticleService} from '../../service/article.service';
import {AlertService} from '../../service/alert.service';
import {CategoryService} from '../../service/category.service';
import {CommentService} from '../../service/comment.service';
import {Comment} from '../../interface/comment.interface'
import { Location } from '@angular/common';

@Component({
  selector: 'app-admin-show-article',
  templateUrl: './admin-show-article.component.html',
  styleUrls: ['./admin-show-article.component.css']
})
export class AdminShowArticleComponent implements OnInit {

  article: Article;
  id: number;
  @Input() title: string;
  @Input() text: string;
  @Input() category: Category;
  @Input() value: Category;
  categories: Category[];
  comments: Comment[];


  constructor(protected apiService: ApiService,
              protected router: Router,
              protected articleService: ArticleService,
              protected activateRoute: ActivatedRoute,
              protected alertService: AlertService,
              protected categoryService: CategoryService,
              protected commentService: CommentService,
              protected location: Location) {

    this.id = activateRoute.snapshot.params['id'];
  }

  ngOnInit() {

    this.showArticle();
    this.getCategories();
    this.getComments();
  }

  showArticle() {

    this.apiService.show(this.articleService.resource, this.id)
      .subscribe(
        data => {
          this.article = data.json();
          this.title = this.article.title;
          this.text = this.article.text;
        },
        error => this.alertService.error(error));
  }

  updateArticle(title, text, category) {

    let body = JSON.stringify({'title':title, 'text':text, 'short_text':title.substr(0,50), 'category_id':category});
    this.apiService.update(this.router.url, body)
      .subscribe(
        data => {
          this.alertService.success('success', true);
          this.location.back();
        },
        error => {
          this.alertService.error(error);
        }
      );
  }

  getCategories() {

    return this.apiService.index(this.categoryService.resource)
      .subscribe(categories => this.categories = categories.json());
  }

  getComments() {

    return this.apiService.index(this.router.url + this.commentService.resource)
      .subscribe(comments => {
        this.comments = comments.json();
      });
  }

  deleteComment(id: number) {

    this.apiService.destroy(this.router.url+'/comments/'+id)
      .subscribe(
        data => {
          this.getComments();
          console.log('success');
          this.alertService.success('Delete success', true);
        },
        error => {
          this.alertService.error(error);
        }
      );
  }

}
