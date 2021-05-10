import 'package:bloc/bloc.dart';
import 'package:blog_app_flutter/Repositories/blog_repository.dart';
import 'blog_state.dart';

class BlogCubit extends Cubit<BlogState>{
  final BlogRepository blogRepo;
  BlogCubit(this.blogRepo) : super(BlogInitial()){
    getBlogs();
  }

  Future<void> getBlogs() async{
    try{
      emit(BlogLoading());
      final blogs=await blogRepo.fetchBlog();
      print(blogs.blogs.toString());
      emit(BlogLoaded(blogs));
    } on Exception catch(e){
      print(e.toString());
      emit(BlogError("Error in Getting Data"));
    }
  }

}