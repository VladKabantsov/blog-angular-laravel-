import {Injectable} from '@angular/core';
import {Http, Response} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import {environment} from '../../environments/environment';
import {Headers} from '@angular/http';
import {ApiService} from './api.service';
import {UserService} from './user.service';
import {User} from '../interface/user.interface';
import {AlertService} from './alert.service';


@Injectable()
export class AuthenticateService {

  user: User;
  token: string;
  restoreResource = '/restore';

  constructor(protected http: Http,
              protected apiService: ApiService,) {
  }







}
