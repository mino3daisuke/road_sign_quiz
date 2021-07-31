// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'road_sign_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoadSignQuizStateTearOff {
  const _$RoadSignQuizStateTearOff();

  _RoadSignQuizState call(
      {int? quizTotalNumber, int? quizCorrectNumber, double? correctRatio}) {
    return _RoadSignQuizState(
      quizTotalNumber: quizTotalNumber,
      quizCorrectNumber: quizCorrectNumber,
      correctRatio: correctRatio,
    );
  }
}

/// @nodoc
const $RoadSignQuizState = _$RoadSignQuizStateTearOff();

/// @nodoc
mixin _$RoadSignQuizState {
  int? get quizTotalNumber => throw _privateConstructorUsedError;
  int? get quizCorrectNumber => throw _privateConstructorUsedError;
  double? get correctRatio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoadSignQuizStateCopyWith<RoadSignQuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadSignQuizStateCopyWith<$Res> {
  factory $RoadSignQuizStateCopyWith(
          RoadSignQuizState value, $Res Function(RoadSignQuizState) then) =
      _$RoadSignQuizStateCopyWithImpl<$Res>;
  $Res call(
      {int? quizTotalNumber, int? quizCorrectNumber, double? correctRatio});
}

/// @nodoc
class _$RoadSignQuizStateCopyWithImpl<$Res>
    implements $RoadSignQuizStateCopyWith<$Res> {
  _$RoadSignQuizStateCopyWithImpl(this._value, this._then);

  final RoadSignQuizState _value;
  // ignore: unused_field
  final $Res Function(RoadSignQuizState) _then;

  @override
  $Res call({
    Object? quizTotalNumber = freezed,
    Object? quizCorrectNumber = freezed,
    Object? correctRatio = freezed,
  }) {
    return _then(_value.copyWith(
      quizTotalNumber: quizTotalNumber == freezed
          ? _value.quizTotalNumber
          : quizTotalNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      quizCorrectNumber: quizCorrectNumber == freezed
          ? _value.quizCorrectNumber
          : quizCorrectNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      correctRatio: correctRatio == freezed
          ? _value.correctRatio
          : correctRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RoadSignQuizStateCopyWith<$Res>
    implements $RoadSignQuizStateCopyWith<$Res> {
  factory _$RoadSignQuizStateCopyWith(
          _RoadSignQuizState value, $Res Function(_RoadSignQuizState) then) =
      __$RoadSignQuizStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? quizTotalNumber, int? quizCorrectNumber, double? correctRatio});
}

/// @nodoc
class __$RoadSignQuizStateCopyWithImpl<$Res>
    extends _$RoadSignQuizStateCopyWithImpl<$Res>
    implements _$RoadSignQuizStateCopyWith<$Res> {
  __$RoadSignQuizStateCopyWithImpl(
      _RoadSignQuizState _value, $Res Function(_RoadSignQuizState) _then)
      : super(_value, (v) => _then(v as _RoadSignQuizState));

  @override
  _RoadSignQuizState get _value => super._value as _RoadSignQuizState;

  @override
  $Res call({
    Object? quizTotalNumber = freezed,
    Object? quizCorrectNumber = freezed,
    Object? correctRatio = freezed,
  }) {
    return _then(_RoadSignQuizState(
      quizTotalNumber: quizTotalNumber == freezed
          ? _value.quizTotalNumber
          : quizTotalNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      quizCorrectNumber: quizCorrectNumber == freezed
          ? _value.quizCorrectNumber
          : quizCorrectNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      correctRatio: correctRatio == freezed
          ? _value.correctRatio
          : correctRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_RoadSignQuizState implements _RoadSignQuizState {
  const _$_RoadSignQuizState(
      {this.quizTotalNumber, this.quizCorrectNumber, this.correctRatio});

  @override
  final int? quizTotalNumber;
  @override
  final int? quizCorrectNumber;
  @override
  final double? correctRatio;

  @override
  String toString() {
    return 'RoadSignQuizState(quizTotalNumber: $quizTotalNumber, quizCorrectNumber: $quizCorrectNumber, correctRatio: $correctRatio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoadSignQuizState &&
            (identical(other.quizTotalNumber, quizTotalNumber) ||
                const DeepCollectionEquality()
                    .equals(other.quizTotalNumber, quizTotalNumber)) &&
            (identical(other.quizCorrectNumber, quizCorrectNumber) ||
                const DeepCollectionEquality()
                    .equals(other.quizCorrectNumber, quizCorrectNumber)) &&
            (identical(other.correctRatio, correctRatio) ||
                const DeepCollectionEquality()
                    .equals(other.correctRatio, correctRatio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quizTotalNumber) ^
      const DeepCollectionEquality().hash(quizCorrectNumber) ^
      const DeepCollectionEquality().hash(correctRatio);

  @JsonKey(ignore: true)
  @override
  _$RoadSignQuizStateCopyWith<_RoadSignQuizState> get copyWith =>
      __$RoadSignQuizStateCopyWithImpl<_RoadSignQuizState>(this, _$identity);
}

abstract class _RoadSignQuizState implements RoadSignQuizState {
  const factory _RoadSignQuizState(
      {int? quizTotalNumber,
      int? quizCorrectNumber,
      double? correctRatio}) = _$_RoadSignQuizState;

  @override
  int? get quizTotalNumber => throw _privateConstructorUsedError;
  @override
  int? get quizCorrectNumber => throw _privateConstructorUsedError;
  @override
  double? get correctRatio => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoadSignQuizStateCopyWith<_RoadSignQuizState> get copyWith =>
      throw _privateConstructorUsedError;
}
