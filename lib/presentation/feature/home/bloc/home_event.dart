import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class NavigateToDetailScreen extends HomeEvent {
  final String jobTitle;

  NavigateToDetailScreen(this.jobTitle);

  @override
  List<Object?> get props => [jobTitle];
}
