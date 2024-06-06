import 'package:dio_clean_learn/core/constants/app_constants.dart';
import 'package:dio_clean_learn/core/network/networking.dart';
import 'package:dio_clean_learn/features/home/data/models/publication_model.dart';

abstract interface class PublicationsRemoteDataSource {
  Future<List<PublicationModelDataLayer>> getPublications(
      {int page = 1, int limit = 10});
}

class PublicationsRemoteDataSourceImpl implements PublicationsRemoteDataSource {
  final Networking network;

  PublicationsRemoteDataSourceImpl({
    required this.network,
  });

  @override
  Future<List<PublicationModelDataLayer>> getPublications(
      {int page = 1, int limit = 10}) async {
    try {
      final response = await network.get(
        path: '${AppConstants.baseUrl}/publications',
        queryParameters: {
          'page': page,
          'limit': limit,
          'select':
              'title author publicationPicture categoryDetails updatedAt createdAt',
        },
      );

      return (response.data["data"]["data"])
          .map<PublicationModelDataLayer>(
              (publication) => PublicationModelDataLayer.fromJson(publication))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
