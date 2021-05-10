
import 'package:blog_app_flutter/Models/Blogs.dart';

abstract class BlogState {
  const BlogState();
}
class BlogInitial extends BlogState{
  const BlogInitial();
}
class BlogLoading extends BlogState{
  const BlogLoading();
}
class BlogLoaded extends BlogState{
  final Blogs _blogsObj;

  Blogs get blogsObj => _blogsObj;

  const BlogLoaded(this._blogsObj);

}

class BlogError extends BlogState{
  final String _errorMsg;

  String get errorMsg => _errorMsg;

  const BlogError(this._errorMsg);
}