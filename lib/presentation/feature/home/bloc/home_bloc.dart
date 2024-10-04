import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is NavigateToDetailScreen) {
      // Emit state untuk navigasi
      yield NavigateToDetail(event.jobTitle);
    }
    // Tambahkan logika untuk event lainnya jika ada
  }
}
