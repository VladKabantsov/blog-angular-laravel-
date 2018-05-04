import {RouterModule, Routes} from '@angular/router';
import {ArticlesComponent} from './articles/articles.component';
import {NewArticleComponent} from './new-article/new-article.component';
import {ModuleWithProviders} from '@angular/core';
import {ShowArticleComponent} from './show-article/show-article.component';
import {RegisterComponent} from './register/register.component';
import {AuthGuard} from './guard/auth.guard';
import {RestorePasswordComponent} from './restore-password/restore-password.component';
import {SendMailForRestoreComponent} from './send-mail-for-restore/send-mail-for-restore.component';
import {AdminPanelComponent} from './admin-panel/admin-panel.component';
import {AdminArticlesComponent} from './admin-panel/admin-articles/admin-articles.component';
import {AdminShowArticleComponent} from './admin-panel/admin-show-article/admin-show-article.component';
import {AdminArticleCommentsComponent} from './admin-panel/admin-article-comments/admin-article-comments.component';

const APP_ROUTES: Routes = [
  { path: '', component: ArticlesComponent },
  { path: 'new-article', component: NewArticleComponent, canActivate: [AuthGuard]},
  { path: 'articles/:id', component: ShowArticleComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'restore', component: SendMailForRestoreComponent },
  { path: 'restore-pass', component: RestorePasswordComponent },
  { path: 'admin/:id', component: AdminPanelComponent,
    children: [
      { path: 'articles', component: AdminArticlesComponent },
      { path: 'articles/:id', component: AdminShowArticleComponent },
      { path: 'articles/:id/comments/:id', component: AdminArticleCommentsComponent}
    ]
  },
];

export const routing: ModuleWithProviders = RouterModule.forRoot(APP_ROUTES);
