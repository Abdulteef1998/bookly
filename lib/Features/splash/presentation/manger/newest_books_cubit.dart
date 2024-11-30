import 'package:bloc/bloc.dart';
import 'package:bookly/Features/splash/presentation/home/domain/use_cases/featch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

import '../home/domain/entity/book_entity.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> featuredNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((faliure) {
      emit(NewestBooksFailure(faliure.message));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
