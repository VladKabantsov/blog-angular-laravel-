import {
  AfterContentChecked, AfterContentInit, AfterViewChecked, AfterViewInit, Component, DoCheck, OnChanges, OnDestroy,
  OnInit
} from '@angular/core';
import {User} from '../interface/user.interface';
import {UserService} from '../service/user.service';
import {ApiService} from '../service/api.service';
import {AuthenticateService} from '../service/authenticate.service';
import {AlertService} from '../service/alert.service';
import {Router} from '@angular/router';
import {environment} from '../../environments/environment';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit, DoCheck {

  user: User;

  constructor(protected userService: UserService,
              protected apiService: ApiService,
              protected alertService: AlertService,
              protected router: Router,) {
  }

  ngOnInit() {
    this.getCurrenUserName();
  }

  ngDoCheck() {
    this.user = this.userService.user;
  }

  getCurrenUserName() {
    this.apiService.index(this.userService.resource)
      .subscribe(
        data => {
          this.user = data;
        }, error => {

        });
  }

  login() {
    this.alertService.openModalLogin();
  }

  logout() {

    this.apiService.destroy(this.userService.resource)
      .subscribe(
        data => {
          this.alertService.success('You are logged out', true),
          delete this.userService.user;
          delete this.apiService.token;
        },
        error => {
          this.alertService.error(error);
        }
      );
  }

}
