import {Component, NgModule, Input, OnInit} from '@angular/core';
import {ArticleService} from '../service/article.service';
import {FormsModule} from '@angular/forms';
import {BrowserModule} from '@angular/platform-browser';
import {Article} from '../interface/article.interface';
import {BsModalService} from 'ngx-bootstrap/modal';
import {LoginComponent} from '../login/login.component';
import {BsModalRef} from 'ngx-bootstrap/modal/bs-modal-ref.service';
import {Category} from '../interface/category.interface';
import {CategoryService} from '../service/category.service';
import {Router} from '@angular/router';
import {AlertService} from '../service/alert.service';
import {ApiService} from '../service/api.service';
import {User} from '../interface/user.interface';

@Component({
  selector: 'app-new-article',
  templateUrl: './new-article.component.html',
  styleUrls: ['./new-article.component.css']
})

export class NewArticleComponent implements OnInit {

  article: Article;
  categories: Category[];
  message: string;

  @Input() title: string;
  @Input() text: string;
  @Input() category: Category;
  @Input() value: Category;


  constructor(protected articleService: ArticleService,
              protected modalService: BsModalService,
              protected categoryService: CategoryService,
              protected alertService: AlertService,
              protected router: Router,
              protected apiService: ApiService,) {
  }

  ngOnInit() {
    this.getCategories();
  }

  postArticle(title: string, text: string, categoryID: number) {

    let shortText = text.substring(0, 50);
    let body = JSON.stringify({'title': title, 'text': text, 'short_text': shortText, 'category_id': categoryID});

    return this.apiService.store(this.articleService.resource, body)
      .subscribe(data => {
        this.alertService.success('Success!', true);
        this.router.navigate(['/']);
      }, error => {
        this.alertService.error(error);
      });
  }

  getCategories() {

    return this.apiService.index(this.categoryService.resource)
      .subscribe(categories => this.categories = categories.json());
  }

}
