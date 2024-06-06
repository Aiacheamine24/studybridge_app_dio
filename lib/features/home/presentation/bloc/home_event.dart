part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeLoadPublications extends HomeEvent {
  final int page;
  final int? previousPage;
  final int? nextPage;
  final int limit;

  HomeLoadPublications({
    this.page = 1,
    this.previousPage,
    this.nextPage,
    this.limit = 10,
  });
}

final class HomeLoadMorePublications extends HomeEvent {
  final int page;
  final int? previousPage;
  final int? nextPage;
  final int limit;

  HomeLoadMorePublications({
    required this.page,
    this.previousPage,
    this.nextPage,
    this.limit = 10,
  });
}
