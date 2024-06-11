import 'package:dio_clean_learn/core/common/widgets/snak_bar.dart';
import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';
import 'package:dio_clean_learn/features/home/presentation/bloc/home_bloc.dart';
import 'package:dio_clean_learn/features/home/presentation/widgets/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfPublications extends StatefulWidget {
  const ListOfPublications({super.key});

  @override
  State<ListOfPublications> createState() => _ListOfPublicationsState();
}

class _ListOfPublicationsState extends State<ListOfPublications> {
  final List<PublicationEntity> publications = [];
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  final int limit = 10;

  @override
  void initState() {
    super.initState();
    context
        .read<HomeBloc>()
        .add(HomeLoadPublications(page: currentPage, limit: limit));
    _scrollController.addListener(_onScroll);
  }

  // When the user scrolls to the bottom of the list, the next page of publications is loaded.
  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      currentPage++;
      context
          .read<HomeBloc>()
          .add(HomeLoadMorePublications(page: currentPage, limit: limit));
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeFailure) {
          customSnackBar(context, message: state.message, type: 'error');
        }
      },
      builder: (context, state) {
        if (state is HomeLoading && publications.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeLoadedPublicationsSuccess) {
          if (currentPage == 1) {
            publications.clear();
          }
          publications.addAll(state.publications);
        }

        if (publications.isEmpty) {
          return const Center(
            child: Text('No publications'),
          );
        }

        return ListView.builder(
          controller: _scrollController,
          itemCount: publications.length,
          itemBuilder: (context, index) {
            final publication = publications[index];
            return Publication(publication: publication);
          },
        );
      },
    );
  }
}
