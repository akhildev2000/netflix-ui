import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/search/model/search_response/search_response.dart';
import 'package:netflix_app/domain/search/model/search_response/search_service.dart';

import '../../../domain/downloads/models/downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(
    this._searchService,
    this._downloadsService,
  ) : super(SearchState.initial()) {
//idle state
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        emit(state);
        return;
      }
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      //get trending
      final result = await _downloadsService.getDownloadImages();
      final _state = result.fold(
        (MainFailures) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: true,
            isError: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );
      //show to ui
      emit(_state);
    });
//searchresult state
    on<SearchMovie>((event, emit) {
      //call search movie api
      _searchService.searchMovies(movieQuery: event.movieQuery);
      //show to ui
    });
  }
}
