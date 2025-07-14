import 'package:equatable/equatable.dart';

import 'data.dart';

class Profile extends Equatable {
  final Data? data;
  final String? message;

  const Profile({this.data, this.message});

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'message': message,
      };

  @override
  List<Object?> get props => [data, message];
}
