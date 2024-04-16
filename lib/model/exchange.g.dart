// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeImpl _$$ExchangeImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeImpl(
      timeLastUpdateUtc: json['time_last_update_utc'] as String,
      conversionRates: json['conversion_rates'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$ExchangeImplToJson(_$ExchangeImpl instance) =>
    <String, dynamic>{
      'time_last_update_utc': instance.timeLastUpdateUtc,
      'conversion_rates': instance.conversionRates,
    };
