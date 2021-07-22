import 'package:equatable/equatable.dart';

class AppConfig extends Equatable {
  final String path;
  final int? id;

  const AppConfig(this.path, {this.id});

  @override
  List<Object?> get props => [path, id];
}
