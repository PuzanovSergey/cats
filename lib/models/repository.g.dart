// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) {
  return RepositoryModel(
    id: json['id'] as String,
    name: json['name'] as String,
    viewerHasStarred: json['viewerHasStarred'] as bool,
  );
}

Map<String, dynamic> _$RepositoryModelToJson(RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'viewerHasStarred': instance.viewerHasStarred,
    };
