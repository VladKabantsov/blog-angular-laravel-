import {User} from './user.interface';

export interface Comment {
  id: number;
  parent_id: number;
  user_id: number;
  article_id: number;
  content: string;
  created_at: string;
  user: User;
}
