import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import {AuthenticateService} from '../service/authenticate.service';
import {AlertService} from '../service/alert.service';
import {ApiService} from '../service/api.service';

@Component({
  selector: 'app-send-mail-for-restore',
  templateUrl: './send-mail-for-restore.component.html',
  styleUrls: ['./send-mail-for-restore.component.css']
})
export class SendMailForRestoreComponent implements OnInit {

  email: string;

  constructor(protected authenticateService: AuthenticateService,
              protected alertService: AlertService,
              protected router: Router,
              protected apiService: ApiService) { }

  ngOnInit() {
  }

  restoreLetter(email: string) {

    this.apiService.index(this.authenticateService.restoreResource, '?email=' + email)
      .subscribe(
        data => this.alertService.success(data, true),
        error => this.alertService.error(error));
  }
}
