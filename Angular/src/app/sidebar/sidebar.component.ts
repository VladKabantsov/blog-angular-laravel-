import {Component, OnInit} from '@angular/core';
import {CategoryService} from '../service/category.service';
import {Category} from '../interface/category.interface';
import {User} from '../interface/user.interface';
import {UserService} from '../service/user.service';
import {ArticleService} from '../service/article.service';
import {ApiService} from '../service/api.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  categories: Category[] = [];
  users: User[] = [];
  search: string;

  constructor(protected categoryService: CategoryService,
              protected userService: UserService,
              protected articleService: ArticleService,
              protected apiService: ApiService) {
  }

  ngOnInit() {

    this.getAllCategories();
    this.getAllUsers();
  }

  getAllCategories() {

    return this.apiService.index(this.categoryService.resource)
      .subscribe(categories => {
        this.categories = categories.json();
      });
  }

  getAllUsers() {

    return this.apiService.index(this.userService.resource, '?users=all')
      .subscribe(users => {
        this.users = users.json();
      });
  }

  /*Find for key words*/
  getArticles(option: string) {

    if (option !== null && option !== undefined) {

      this.articleService.getArticles(option);
    }
  }

}
