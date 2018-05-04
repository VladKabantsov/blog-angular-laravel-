import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { Observable } from 'rxjs/Observable';
import {AlertService} from '../service/alert.service';
import {User} from '../interface/user.interface';
import {UserService} from '../service/user.service';
import {ApiService} from '../service/api.service';

@Injectable()
export class AuthGuard implements CanActivate {

  user: User;

  constructor(protected alertService: AlertService,
              protected userService: UserService,
              protected apiService: ApiService) {};

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {

    this.apiService.index(this.userService.resource)
      .subscribe(data => {this.user = data, console.log(data);});

    if (this.user !== null && this.user !== undefined) {

      return true;
    } else {

      this.alertService.openModalLogin();
      return false;
    }
  }

}
