// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtg_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MtgCardImpl _$$MtgCardImplFromJson(Map<String, dynamic> json) =>
    _$MtgCardImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      rarity: json['rarity'] as String,
      imageUrl: json['imageUrl'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$MtgCardImplToJson(_$MtgCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'rarity': instance.rarity,
      'imageUrl': instance.imageUrl,
      'text': instance.text,
    };
