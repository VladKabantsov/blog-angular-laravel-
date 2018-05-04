import {Component, OnInit} from '@angular/core';
import {Input} from '@angular/compiler/src/core';
import {AuthenticateService} from '../service/authenticate.service';
import {AlertService} from '../service/alert.service';
import {ActivatedRoute, Route, Router} from '@angular/router';
import {Subscription} from 'rxjs/Subscription';
import {ApiService} from '../service/api.service';

@Component({
  selector: 'app-restore-password',
  templateUrl: './restore-password.component.html',
  styleUrls: ['./restore-password.component.css']
})
export class RestorePasswordComponent implements OnInit {

  password: string;
  passConfirm: string;
  email: string;
  key: string;
  protected querySubscription: Subscription;

  constructor(protected authenticateService: AuthenticateService,
              protected alertService: AlertService,
              protected router: Router,
              protected route: ActivatedRoute,
              protected apiService: ApiService) {
  }

  ngOnInit() {

    this.querySubscription = this.route.queryParams.subscribe(
      (queryParam: any) => {
        this.email = queryParam['email'];
        this.key = queryParam['key'];
      }
    );
  }

  restorePass(password: string, c_password: string) {

    let body = JSON.stringify({'email': this.email, 'key':this.key, 'password':password, 'password_confirmation':c_password});

    this.apiService.store(this.authenticateService.restoreResource, body)
      .subscribe(
        data => this.alertService.success(data.json(), true),
        error => this.alertService.error(error));
  }

}
