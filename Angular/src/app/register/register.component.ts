import {Component, OnInit} from '@angular/core';
import {Router} from '@angular/router';
import {AlertService} from '../service/alert.service';
import {ApiService} from '../service/api.service';
import {UserService} from '../service/user.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})

export class RegisterComponent implements OnInit {

  name: string;
  email: string;
  password: string;
  c_password: string;

  constructor(protected router: Router,
              protected alertService: AlertService,
              protected apiService: ApiService,
              protected userService: UserService) {  }

  ngOnInit() {
  }

  register(name: string, email: string, password: string, c_password: string) {

    let body = JSON.stringify({'name': name, 'email': email, 'password': password, 'password_confirmation': c_password});

    return this.apiService.store(this.router.url, body)
      .subscribe(data => {
          let user = data.json();
          this.alertService.success('Please login '+user.name, true);
          this.router.navigate(['/']);
        },
        error => this.alertService.error(error));
  }
}
