import { Injectable } from '@angular/core';
import { Router, NavigationStart } from '@angular/router';
import { Observable } from 'rxjs';
import { Subject } from 'rxjs/Subject';
import {LoginComponent} from '../login/login.component';
import {BsModalService} from 'ngx-bootstrap/modal';
import {BsModalRef} from 'ngx-bootstrap/modal/bs-modal-ref.service';

@Injectable()
export class AlertService {

  protected subject = new Subject<any>();
  protected keepAfterNavigationChange = false;
  bsModalRef: BsModalRef;

  constructor(protected router: Router,
              public modalService: BsModalService) {

    router.events.subscribe(event => {
      if (event instanceof NavigationStart) {
        if (this.keepAfterNavigationChange) {

          this.keepAfterNavigationChange = false;
        } else {

          this.subject.next();
        }
      }
    });
  }

  success(message: string, keepAfterNavigationChange = false) {
    this.keepAfterNavigationChange = keepAfterNavigationChange;
    this.subject.next({ type: 'success', text: message });
  }

  error(message: string, keepAfterNavigationChange = false) {
    this.keepAfterNavigationChange = keepAfterNavigationChange;
    this.subject.next({ type: 'error', text: message });
  }

  getMessage(): Observable<any> {
    return this.subject.asObservable();
  }

  openModalLogin() {

    this.bsModalRef = this.modalService.show(LoginComponent);
    this.bsModalRef.content.closeBtnName = 'Close';
  }

  closeModalLogin() {
    this.bsModalRef.hide();
  }

}
