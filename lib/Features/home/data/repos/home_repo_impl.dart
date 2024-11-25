import 'package:bookly/Features/home/data/data_sources/home_remote_data_sorce.dart';
import 'package:bookly/Features/splash/presentation/home/domain/entity/book_entity.dart';
import 'package:bookly/Features/splash/presentation/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../data_sources/home_local_data_source.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSorce homeRemoteDataSorce;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSorce, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksList = homeLocalDataSource.fetchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSorce.fetchFeaturedBooks();

      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var booksList = homeLocalDataSource.fetchNewestBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSorce.fetchNewestBooks();

      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
