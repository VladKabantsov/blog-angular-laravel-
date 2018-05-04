import {Component, OnInit} from '@angular/core';
import {AuthenticateService} from '../service/authenticate.service';
import {User} from '../interface/user.interface';
import {AlertService} from '../service/alert.service';
import {Router} from '@angular/router';
import {UserService} from '../service/user.service';
import {ApiService} from '../service/api.service';
import {BsModalRef} from 'ngx-bootstrap';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  email: string;
  password: string;
  modalRef: BsModalRef;

  user: User = <User>{name: '', token: ''};

  constructor(protected router: Router,
              protected userService: UserService,
              protected apiService: ApiService,
              public bsModalRef: BsModalRef) {
  }

  ngOnInit() {

  }

  login(email: string, password: string) {

    let body = JSON.stringify({'email': email, 'password': password});

    this.apiService.store(this.userService.resource, body)
      .subscribe(data => {
          this.userService.user = data.json(),
          this.apiService.token = data.json().token,
          this.close();
        },
        error => {

        });
  }

  close() {
    this.bsModalRef.hide();
  }

}
