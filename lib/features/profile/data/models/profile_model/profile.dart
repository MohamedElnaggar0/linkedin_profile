import 'package:equatable/equatable.dart';

import 'data.dart';

class ProfileModel extends Equatable {
  final Data? data;
  final String? message;

  const ProfileModel({this.data, this.message});

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
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
