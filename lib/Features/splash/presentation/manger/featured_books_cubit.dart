import 'package:bloc/bloc.dart';
import 'package:bookly/Features/splash/presentation/home/domain/entity/book_entity.dart';
import 'package:bookly/Features/splash/presentation/home/domain/use_cases/fetch_featured_books.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> featuredBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold((faliure) {
      if (pageNumber == 0) {
        emit(FeaturedBooksFailure(faliure.message));
      } else {
        emit(FeaturedBooksPaginationFailure(faliure.message));
      }
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
