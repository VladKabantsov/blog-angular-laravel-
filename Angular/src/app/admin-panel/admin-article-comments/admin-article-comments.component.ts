import { Component, OnInit } from '@angular/core';
import {ApiService} from '../../service/api.service';
import {AlertService} from '../../service/alert.service';
import {Comment} from '../../interface/comment.interface'
import {ActivatedRoute, Router} from '@angular/router';
import { Location } from '@angular/common';

@Component({
  selector: 'app-admin-article-comments',
  templateUrl: './admin-article-comments.component.html',
  styleUrls: ['./admin-article-comments.component.css']
})
export class AdminArticleCommentsComponent implements OnInit {

  comment: Comment;
  content: string;
  id: number;

  constructor(protected apiService: ApiService,
              protected alertService: AlertService,
              protected router: Router,
              protected activateRoute: ActivatedRoute,
              protected location: Location,
              ) {
    this.id = activateRoute.snapshot.params['id'];
  }

  ngOnInit() {
    this.showComment();
  }

  showComment() {

    let url = this.router.url.substr(0, this.router.url.length)

    this.apiService.show(this.router.url)
      .subscribe(
        data => {
          this.comment = data.json();
          this.content = this.comment.content;
        },
        error => this.alertService.error(error));
  }

  updateComment(content) {

    let body = JSON.stringify({'content':content});
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

}
