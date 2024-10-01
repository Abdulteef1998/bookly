import 'package:bookly/Features/splash/presentation/home/domain/entity/book_entity.dart';
import 'package:bookly/Features/splash/presentation/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooks {
  final HomeRepo homeRepo;

  FetchFeaturedBooks(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
