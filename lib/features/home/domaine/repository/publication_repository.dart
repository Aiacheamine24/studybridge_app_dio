import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class PublicationRepositoryDomaineLayer {
  /// This method is used to get publications.
  ///
  /// The [page] parameter is the page number.
  /// The [limit] parameter is the number of publications per page.
  Future<Either<Failure, List<PublicationEntity>>> getPublications({
    int page = 1,
    int limit = 10,
  });
}
