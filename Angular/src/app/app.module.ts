import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { AppComponent } from './app.component';
import { ArticlesComponent } from './articles/articles.component';
import { NewArticleComponent } from './new-article/new-article.component';
import { routing } from './app.routing';
import {ArticleService} from './service/article.service';
import { SidebarComponent } from './sidebar/sidebar.component';
import { MenuComponent } from './menu/menu.component';
import { ShowArticleComponent } from './show-article/show-article.component';
import { CommentsComponent } from './comments/comments.component';
import { UserComponent } from './user/user.component';
import {UserService} from './service/user.service';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import {AuthenticateService} from './service/authenticate.service';
import { AlertModule } from 'ngx-bootstrap/alert';
import { AlertComponent } from './alert/alert.component';
import {AlertService} from './service/alert.service';
import { HttpClientModule }   from '@angular/common/http';
import { TestComponent } from './test/test.component';
import {CommentService} from './service/comment.service';
import { ModalModule } from 'ngx-bootstrap/modal';
import {AuthGuard} from './guard/auth.guard';
import {BsModalRef} from 'ngx-bootstrap';
import {CategoryService} from './service/category.service';
import { RestorePasswordComponent } from './restore-password/restore-password.component';
import { SendMailForRestoreComponent } from './send-mail-for-restore/send-mail-for-restore.component';
import { AdminPanelComponent } from './admin-panel/admin-panel.component';
import {ApiService} from './service/api.service';
import { AdminArticlesComponent } from './admin-panel/admin-articles/admin-articles.component';
import { AdminShowArticleComponent } from './admin-panel/admin-show-article/admin-show-article.component';
import { AdminArticleCommentsComponent } from './admin-panel/admin-article-comments/admin-article-comments.component';

@NgModule({
  declarations: [
    AppComponent,
    ArticlesComponent,
    NewArticleComponent,
    SidebarComponent,
    MenuComponent,
    ShowArticleComponent,
    CommentsComponent,
    UserComponent,
    LoginComponent,
    RegisterComponent,
    AlertComponent,
    TestComponent,
    RestorePasswordComponent,
    SendMailForRestoreComponent,
    AdminPanelComponent,
    AdminArticlesComponent,
    AdminShowArticleComponent,
    AdminArticleCommentsComponent,
  ],
  imports: [
    BrowserModule, FormsModule,
    HttpModule, routing, AlertModule.forRoot(),
    HttpClientModule, ModalModule.forRoot()
  ],
  providers: [
    ArticleService, UserService, AuthenticateService,
    AlertService, CommentService, AuthGuard, BsModalRef,
    CategoryService, ApiService
  ],
  bootstrap: [AppComponent],
  entryComponents: [LoginComponent]

})
export class AppModule { }
