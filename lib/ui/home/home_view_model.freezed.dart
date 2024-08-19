// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewState {
  bool get isFirstSelected => throw _privateConstructorUsedError;
  List<Assessment> get assessments => throw _privateConstructorUsedError;
  Challenge? get challenge => throw _privateConstructorUsedError;
  List<Routine> get routines => throw _privateConstructorUsedError;
  List<Appointment> get appointments => throw _privateConstructorUsedError;
  HomeViewStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call(
      {bool isFirstSelected,
      List<Assessment> assessments,
      Challenge? challenge,
      List<Routine> routines,
      List<Appointment> appointments,
      HomeViewStatus status,
      String? errorMessage});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstSelected = null,
    Object? assessments = null,
    Object? challenge = freezed,
    Object? routines = null,
    Object? appointments = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isFirstSelected: null == isFirstSelected
          ? _value.isFirstSelected
          : isFirstSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      assessments: null == assessments
          ? _value.assessments
          : assessments // ignore: cast_nullable_to_non_nullable
              as List<Assessment>,
      challenge: freezed == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as Challenge?,
      routines: null == routines
          ? _value.routines
          : routines // ignore: cast_nullable_to_non_nullable
              as List<Routine>,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeViewStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewStateImplCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$HomeViewStateImplCopyWith(
          _$HomeViewStateImpl value, $Res Function(_$HomeViewStateImpl) then) =
      __$$HomeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFirstSelected,
      List<Assessment> assessments,
      Challenge? challenge,
      List<Routine> routines,
      List<Appointment> appointments,
      HomeViewStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstSelected = null,
    Object? assessments = null,
    Object? challenge = freezed,
    Object? routines = null,
    Object? appointments = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeViewStateImpl(
      isFirstSelected: null == isFirstSelected
          ? _value.isFirstSelected
          : isFirstSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      assessments: null == assessments
          ? _value._assessments
          : assessments // ignore: cast_nullable_to_non_nullable
              as List<Assessment>,
      challenge: freezed == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as Challenge?,
      routines: null == routines
          ? _value._routines
          : routines // ignore: cast_nullable_to_non_nullable
              as List<Routine>,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeViewStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeViewStateImpl implements _HomeViewState {
  const _$HomeViewStateImpl(
      {this.isFirstSelected = true,
      final List<Assessment> assessments = const [],
      this.challenge,
      final List<Routine> routines = const [],
      final List<Appointment> appointments = const [],
      this.status = HomeViewStatus.initial,
      this.errorMessage})
      : _assessments = assessments,
        _routines = routines,
        _appointments = appointments;

  @override
  @JsonKey()
  final bool isFirstSelected;
  final List<Assessment> _assessments;
  @override
  @JsonKey()
  List<Assessment> get assessments {
    if (_assessments is EqualUnmodifiableListView) return _assessments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assessments);
  }

  @override
  final Challenge? challenge;
  final List<Routine> _routines;
  @override
  @JsonKey()
  List<Routine> get routines {
    if (_routines is EqualUnmodifiableListView) return _routines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routines);
  }

  final List<Appointment> _appointments;
  @override
  @JsonKey()
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  @JsonKey()
  final HomeViewStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeViewState(isFirstSelected: $isFirstSelected, assessments: $assessments, challenge: $challenge, routines: $routines, appointments: $appointments, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateImpl &&
            (identical(other.isFirstSelected, isFirstSelected) ||
                other.isFirstSelected == isFirstSelected) &&
            const DeepCollectionEquality()
                .equals(other._assessments, _assessments) &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            const DeepCollectionEquality().equals(other._routines, _routines) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFirstSelected,
      const DeepCollectionEquality().hash(_assessments),
      challenge,
      const DeepCollectionEquality().hash(_routines),
      const DeepCollectionEquality().hash(_appointments),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      __$$HomeViewStateImplCopyWithImpl<_$HomeViewStateImpl>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState(
      {final bool isFirstSelected,
      final List<Assessment> assessments,
      final Challenge? challenge,
      final List<Routine> routines,
      final List<Appointment> appointments,
      final HomeViewStatus status,
      final String? errorMessage}) = _$HomeViewStateImpl;

  @override
  bool get isFirstSelected;
  @override
  List<Assessment> get assessments;
  @override
  Challenge? get challenge;
  @override
  List<Routine> get routines;
  @override
  List<Appointment> get appointments;
  @override
  HomeViewStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
