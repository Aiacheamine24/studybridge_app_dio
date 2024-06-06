import 'package:dio/dio.dart';
import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/features/home/data/datasource/publications_remote_data_source.dart';
import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';
import 'package:dio_clean_learn/features/home/domaine/repository/publication_repository.dart';
import 'package:fpdart/src/either.dart';

class PublicationRepositoryImpl implements PublicationRepositoryDomaineLayer {
  final PublicationsRemoteDataSource publicationsRemoteDataSource;
  const PublicationRepositoryImpl({required this.publicationsRemoteDataSource});

  @override
  Future<Either<Failure, List<PublicationEntity>>> getPublications(
      {int page = 1, int limit = 10}) async {
    try {
      final res = await publicationsRemoteDataSource.getPublications(
        page: page,
        limit: limit,
      );
      return Right(res.map((e) => PublicationEntity.fromModel(e)).toList());
    } catch (e) {
      if (e is DioException) {
        // Throw a ServerException with the server's error message
        return Left(Failure(
            message: e.response?.data['message'],
            statusCode: e.response?.statusCode as int));
      } else {
        // It's some other type of exception
        return Left(Failure(
            message:
                "An error occurred ${e.toString().split("Exception:").last}"));
      }
    }
  }
}
