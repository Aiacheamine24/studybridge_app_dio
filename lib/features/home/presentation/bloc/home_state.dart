part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeFailure extends HomeState {
  final String message;

  HomeFailure({
    required this.message,
  });
}

final class HomeLoadedPublicationsSuccess extends HomeState {
  final List<PublicationEntity> publications;

  HomeLoadedPublicationsSuccess({
    required this.publications,
  });
}