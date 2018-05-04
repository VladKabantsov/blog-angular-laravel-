import {Comment} from './comment.interface';
import {Category} from './category.interface';
import {User} from './user.interface';

export interface Article {
  id: number;
  title: string;
  text: string;
  short_text: string;
  user_id: string;
  category_id: string;
  created_at: string;
  comments: Comment[];
  user: User;
  category: Category;
}
