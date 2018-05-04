import {Component, Input, OnInit} from '@angular/core';
import {User} from '../interface/user.interface';
import 'rxjs/add/observable/combineLatest';
import {AuthenticateService} from '../service/authenticate.service';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {

  user: User;
  response: string;

  email: string;
  password: string;
  token: string;

  constructor(public authenticateService: AuthenticateService) {
  }

  ngOnInit() {
  }



}
