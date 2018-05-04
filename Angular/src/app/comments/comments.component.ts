import {Component, Input, OnInit} from '@angular/core';
import {Article} from '../interface/article.interface';
import {Comment} from '../interface/comment.interface';
import {ArticleService} from '../service/article.service';
import {User} from '../interface/user.interface';
import {CommentService} from '../service/comment.service';
import {Router} from '@angular/router';
import {ApiService} from '../service/api.service';
import {UserService} from '../service/user.service';
import {AlertService} from '../service/alert.service';

@Component({
  selector: 'app-comments',
  templateUrl: './comments.component.html',
  styleUrls: ['./comments.component.css']
})
export class CommentsComponent implements OnInit {

  article: Article;
  comments: Comment[] = [];
  users: User[];
  comm: string;
  message: string;
  parentID: any;
  user: User;


  @Input() content: string;

  constructor(protected articleService: ArticleService,
              protected commentService: CommentService,
              protected alertService: AlertService,
              protected router: Router,
              protected apiService: ApiService,
              protected userService: UserService) {
  }

  ngOnInit() {

    this.article = this.articleService.article;
    this.getComments();
  }


  getComments() {

    return this.apiService.index(this.router.url + this.commentService.resource)
      .subscribe(comments => {
        this.comments = comments.json();
      });
  }

  postComment() {

    if (this.userService.user === null || this.userService.user === undefined) {

      this.alertService.openModalLogin();
    } else {

      let body = JSON.stringify({'content': this.content, 'parent_id': this.parentID});

      return this.apiService.store(this.router.url + this.commentService.resource, body)
        .subscribe(comment => {
          this.comments.push(comment.json());
          this.clearForm();
        });
    }

  }

  clearForm() {
    this.content = '';
    this.showMessage('Comment posted');
  }

  showMessage(message: string) {
    this.message = message;
  }

}
