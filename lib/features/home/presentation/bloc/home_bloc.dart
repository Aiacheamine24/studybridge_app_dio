import 'package:bloc/bloc.dart';
import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';
import 'package:dio_clean_learn/features/home/domaine/usecases/get_publications.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPublicationsUseCase getPublicationsUseCase;

  HomeBloc({
    required this.getPublicationsUseCase,
  }) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      // HomeLoadPublications Event
      if (event is HomeLoadPublications) {
        emit(HomeLoading());
        final publications = await getPublicationsUseCase(GetPublicationsParams(
          page: event.page,
          limit: event.limit,
        ));

        publications.fold(
          (failure) => emit(HomeFailure(message: failure.message)),
          (publications) => emit(
            HomeLoadedPublicationsSuccess(publications: publications),
          ),
        );
      }

      // HomeLoadMorePublications Event
      if (event is HomeLoadMorePublications) {
        final publications = await getPublicationsUseCase(GetPublicationsParams(
          page: event.page,
          limit: event.limit,
        ));

        publications.fold(
          (failure) => emit(HomeFailure(message: failure.message)),
          (publications) => emit(
            HomeLoadedPublicationsSuccess(publications: publications),
          ),
        );
      }
    });
  }
}
