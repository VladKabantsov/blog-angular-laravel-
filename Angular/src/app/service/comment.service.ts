import { Injectable } from '@angular/core';
import {Headers, Http, Response} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import {ArticleService} from './article.service';
import {Comment} from '../interface/comment.interface';
import 'rxjs/Rx';
import {environment} from '../../environments/environment';

@Injectable()
export class CommentService {

  comments: Comment[];
  message: string;

  resource = '/comments';

  constructor() { }

}
