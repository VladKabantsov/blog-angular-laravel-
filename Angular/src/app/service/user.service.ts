import {Injectable} from '@angular/core';
import {Observable} from 'rxjs/Observable';
import {Http, Response} from '@angular/http';
import {User} from '../interface/user.interface';
import {environment} from '../../environments/environment';

@Injectable()
export class UserService {

  user: User;
  resource = '/user'

  constructor(private http: Http) {
  }

  get() {
    return this.http.get( environment.url + 'users')
      .map(
        (response: Response) => {
          return response.json().users;
        }
      );
  }
}
