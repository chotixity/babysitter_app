// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'babysitter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BabySitterImpl _$$BabySitterImplFromJson(Map<String, dynamic> json) =>
    _$BabySitterImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      location: json['location'] as String,
      gender: json['gender'] as String,
      id: json['id'] as String,
      rating: json['rating'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      description: json['description'] as String,
      imageUrl:
          (json['imageUrl'] as List<dynamic>).map((e) => e as String).toList(),
      pricing: (json['pricing'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ))
          .toList(),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$BabySitterImplToJson(_$BabySitterImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'location': instance.location,
      'gender': instance.gender,
      'id': instance.id,
      'rating': instance.rating,
      'reviews': instance.reviews,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'pricing': instance.pricing,
      'isFavorite': instance.isFavorite,
    };
