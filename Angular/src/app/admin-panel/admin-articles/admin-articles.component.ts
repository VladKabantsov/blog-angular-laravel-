import {Component, OnInit} from '@angular/core';
import {ArticleService} from '../../service/article.service';
import {Article} from '../../interface/article.interface';
import {ApiService} from '../../service/api.service';
import {Router} from '@angular/router';
import {AlertService} from '../../service/alert.service';

@Component({
  selector: 'app-admin-articles',
  templateUrl: './admin-articles.component.html',
  styleUrls: ['./admin-articles.component.css']
})
export class AdminArticlesComponent implements OnInit {

  articles: Article[];

  constructor(protected apiService: ApiService,
              protected router: Router,
              protected alertService: AlertService) {
  }

  ngOnInit() {
    this.loadArticles();
  }

  delete(id: number) {
    this.apiService.destroy(this.router.url+'/'+id)
      .subscribe(
        data => {
          this.loadArticles();
          this.alertService.success('Delete success', true);
        },
        error => {
          this.alertService.error(error);
        }
      );
  }

  loadArticles() {
    this.apiService.index(this.router.url)
      .subscribe(
        data => {
          this.articles = data.json();
        },
        error => {
          this.alertService.error(error);
        }
      );
  }
}
