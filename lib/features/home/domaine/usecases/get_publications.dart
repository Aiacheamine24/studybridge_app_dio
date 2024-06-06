import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/core/usecase/usecase.dart';
import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';
import 'package:dio_clean_learn/features/home/domaine/repository/publication_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPublicationsUseCase
    implements UseCase<List<PublicationEntity>, GetPublicationsParams> {
  final PublicationRepositoryDomaineLayer publicationRepositoryDomaineLayer;
  const GetPublicationsUseCase(
      {required this.publicationRepositoryDomaineLayer});

  @override
  Future<Either<Failure, List<PublicationEntity>>> call(
      GetPublicationsParams params) {
    return publicationRepositoryDomaineLayer.getPublications(
      page: params.page,
      limit: params.limit,
    );
  }
}

class GetPublicationsParams {
  final int page;
  final int limit;

  GetPublicationsParams({
    required this.page,
    required this.limit,
  });
}
