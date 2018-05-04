import {Injectable} from '@angular/core';
import {Observable} from 'rxjs/Observable';
import {Headers, Http, RequestOptions, Response} from '@angular/http';
import {environment} from '../../environments/environment';
import {RequestOptionsArgs} from '@angular/http/src/interfaces';

@Injectable()
export class ApiService {

  url: string;
  token: string;
  headers = new Headers({
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  });

  constructor(protected http: Http) {
  }

  index(resource: string, option?: string): Observable<any> {
    if (!option) {
      this.url = resource;
    } else {
      this.url = resource + option;
    }

    return this.http.get(environment.url + this.url)
      .map(
        (response: Response) => {

          return response;
        }
      );
  }

  store(resource: string, body: string) {

    this.headers.append('Authorization', 'Bearer ' + this.token);
    const options = new RequestOptions({headers: this.headers});

    return this.http.post(environment.url + resource, body, options)
      .map(
        (response: Response) => {
          this.headers.delete('Authorization');
          return response;
        }
      );
  }

  show(resource: string, id?: number): Observable<any> {

    let idNum = (id == null || id==undefined)? '' : id;

    return this.http.get(environment.url + resource + '/' + idNum)
      .map(
        (response: Response) => {

          return response;
        }
      );
  }

  update(resource: string, body: string) {

    return this.http.patch(environment.url + resource, body, {headers: this.headers})
      .map(
        (response: Response) => {

          return response;
        }
      );
  }

  destroy(resource: string) {

    this.headers.append('Authorization', 'Bearer ' + this.token);
    const options = new RequestOptions({headers: this.headers});

    return this.http.delete(environment.url + resource, options)
      .map(
        (response: Response) => {
          this.headers.delete('Authorization');
          return response;
        }
      );
  }

}
