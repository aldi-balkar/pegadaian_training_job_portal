import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class NavigateToDetail extends HomeState {
  final String jobTitle;

  NavigateToDetail(this.jobTitle);

  @override
  List<Object?> get props => [jobTitle];
}
