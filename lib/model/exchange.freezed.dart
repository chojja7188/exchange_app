// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exchange _$ExchangeFromJson(Map<String, dynamic> json) {
  return _Exchange.fromJson(json);
}

/// @nodoc
mixin _$Exchange {
  @JsonKey(name: 'time_last_update_utc')
  String get timeLastUpdateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversion_rates')
  Map<String, dynamic> get conversionRates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeCopyWith<Exchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeCopyWith<$Res> {
  factory $ExchangeCopyWith(Exchange value, $Res Function(Exchange) then) =
      _$ExchangeCopyWithImpl<$Res, Exchange>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time_last_update_utc') String timeLastUpdateUtc,
      @JsonKey(name: 'conversion_rates') Map<String, dynamic> conversionRates});
}

/// @nodoc
class _$ExchangeCopyWithImpl<$Res, $Val extends Exchange>
    implements $ExchangeCopyWith<$Res> {
  _$ExchangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLastUpdateUtc = null,
    Object? conversionRates = null,
  }) {
    return _then(_value.copyWith(
      timeLastUpdateUtc: null == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeImplCopyWith<$Res>
    implements $ExchangeCopyWith<$Res> {
  factory _$$ExchangeImplCopyWith(
          _$ExchangeImpl value, $Res Function(_$ExchangeImpl) then) =
      __$$ExchangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time_last_update_utc') String timeLastUpdateUtc,
      @JsonKey(name: 'conversion_rates') Map<String, dynamic> conversionRates});
}

/// @nodoc
class __$$ExchangeImplCopyWithImpl<$Res>
    extends _$ExchangeCopyWithImpl<$Res, _$ExchangeImpl>
    implements _$$ExchangeImplCopyWith<$Res> {
  __$$ExchangeImplCopyWithImpl(
      _$ExchangeImpl _value, $Res Function(_$ExchangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLastUpdateUtc = null,
    Object? conversionRates = null,
  }) {
    return _then(_$ExchangeImpl(
      timeLastUpdateUtc: null == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeImpl with DiagnosticableTreeMixin implements _Exchange {
  const _$ExchangeImpl(
      {@JsonKey(name: 'time_last_update_utc') required this.timeLastUpdateUtc,
      @JsonKey(name: 'conversion_rates')
      required final Map<String, dynamic> conversionRates})
      : _conversionRates = conversionRates;

  factory _$ExchangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeImplFromJson(json);

  @override
  @JsonKey(name: 'time_last_update_utc')
  final String timeLastUpdateUtc;
  final Map<String, dynamic> _conversionRates;
  @override
  @JsonKey(name: 'conversion_rates')
  Map<String, dynamic> get conversionRates {
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conversionRates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Exchange(timeLastUpdateUtc: $timeLastUpdateUtc, conversionRates: $conversionRates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Exchange'))
      ..add(DiagnosticsProperty('timeLastUpdateUtc', timeLastUpdateUtc))
      ..add(DiagnosticsProperty('conversionRates', conversionRates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeImpl &&
            (identical(other.timeLastUpdateUtc, timeLastUpdateUtc) ||
                other.timeLastUpdateUtc == timeLastUpdateUtc) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timeLastUpdateUtc,
      const DeepCollectionEquality().hash(_conversionRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeImplCopyWith<_$ExchangeImpl> get copyWith =>
      __$$ExchangeImplCopyWithImpl<_$ExchangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeImplToJson(
      this,
    );
  }
}

abstract class _Exchange implements Exchange {
  const factory _Exchange(
      {@JsonKey(name: 'time_last_update_utc')
      required final String timeLastUpdateUtc,
      @JsonKey(name: 'conversion_rates')
      required final Map<String, dynamic> conversionRates}) = _$ExchangeImpl;

  factory _Exchange.fromJson(Map<String, dynamic> json) =
      _$ExchangeImpl.fromJson;

  @override
  @JsonKey(name: 'time_last_update_utc')
  String get timeLastUpdateUtc;
  @override
  @JsonKey(name: 'conversion_rates')
  Map<String, dynamic> get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeImplCopyWith<_$ExchangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
