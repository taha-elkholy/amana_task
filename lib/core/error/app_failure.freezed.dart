// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppFailure {
  String get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) network,
    required TResult Function(String errorMessage) unAuth,
    required TResult Function(String errorMessage) notFound,
    required TResult Function(String errorMessage) unknown,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? network,
    TResult? Function(String errorMessage)? unAuth,
    TResult? Function(String errorMessage)? notFound,
    TResult? Function(String errorMessage)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? network,
    TResult Function(String errorMessage)? unAuth,
    TResult Function(String errorMessage)? notFound,
    TResult Function(String errorMessage)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkFailure value) network,
    required TResult Function(AppUnUthFailure value) unAuth,
    required TResult Function(AppNotFoundFailure value) notFound,
    required TResult Function(AppUnKnownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkFailure value)? network,
    TResult? Function(AppUnUthFailure value)? unAuth,
    TResult? Function(AppNotFoundFailure value)? notFound,
    TResult? Function(AppUnKnownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkFailure value)? network,
    TResult Function(AppUnUthFailure value)? unAuth,
    TResult Function(AppNotFoundFailure value)? notFound,
    TResult Function(AppUnKnownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppFailureCopyWith<AppFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res, AppFailure>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res, $Val extends AppFailure>
    implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNetworkFailureCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$AppNetworkFailureCopyWith(
          _$AppNetworkFailure value, $Res Function(_$AppNetworkFailure) then) =
      __$$AppNetworkFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AppNetworkFailureCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$AppNetworkFailure>
    implements _$$AppNetworkFailureCopyWith<$Res> {
  __$$AppNetworkFailureCopyWithImpl(
      _$AppNetworkFailure _value, $Res Function(_$AppNetworkFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AppNetworkFailure(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppNetworkFailure implements AppNetworkFailure {
  const _$AppNetworkFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailure.network(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNetworkFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNetworkFailureCopyWith<_$AppNetworkFailure> get copyWith =>
      __$$AppNetworkFailureCopyWithImpl<_$AppNetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) network,
    required TResult Function(String errorMessage) unAuth,
    required TResult Function(String errorMessage) notFound,
    required TResult Function(String errorMessage) unknown,
  }) {
    return network(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? network,
    TResult? Function(String errorMessage)? unAuth,
    TResult? Function(String errorMessage)? notFound,
    TResult? Function(String errorMessage)? unknown,
  }) {
    return network?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? network,
    TResult Function(String errorMessage)? unAuth,
    TResult Function(String errorMessage)? notFound,
    TResult Function(String errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkFailure value) network,
    required TResult Function(AppUnUthFailure value) unAuth,
    required TResult Function(AppNotFoundFailure value) notFound,
    required TResult Function(AppUnKnownFailure value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkFailure value)? network,
    TResult? Function(AppUnUthFailure value)? unAuth,
    TResult? Function(AppNotFoundFailure value)? notFound,
    TResult? Function(AppUnKnownFailure value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkFailure value)? network,
    TResult Function(AppUnUthFailure value)? unAuth,
    TResult Function(AppNotFoundFailure value)? notFound,
    TResult Function(AppUnKnownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class AppNetworkFailure implements AppFailure {
  const factory AppNetworkFailure({required final String errorMessage}) =
      _$AppNetworkFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppNetworkFailureCopyWith<_$AppNetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUnUthFailureCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$AppUnUthFailureCopyWith(
          _$AppUnUthFailure value, $Res Function(_$AppUnUthFailure) then) =
      __$$AppUnUthFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AppUnUthFailureCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$AppUnUthFailure>
    implements _$$AppUnUthFailureCopyWith<$Res> {
  __$$AppUnUthFailureCopyWithImpl(
      _$AppUnUthFailure _value, $Res Function(_$AppUnUthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AppUnUthFailure(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppUnUthFailure implements AppUnUthFailure {
  const _$AppUnUthFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailure.unAuth(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUnUthFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUnUthFailureCopyWith<_$AppUnUthFailure> get copyWith =>
      __$$AppUnUthFailureCopyWithImpl<_$AppUnUthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) network,
    required TResult Function(String errorMessage) unAuth,
    required TResult Function(String errorMessage) notFound,
    required TResult Function(String errorMessage) unknown,
  }) {
    return unAuth(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? network,
    TResult? Function(String errorMessage)? unAuth,
    TResult? Function(String errorMessage)? notFound,
    TResult? Function(String errorMessage)? unknown,
  }) {
    return unAuth?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? network,
    TResult Function(String errorMessage)? unAuth,
    TResult Function(String errorMessage)? notFound,
    TResult Function(String errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkFailure value) network,
    required TResult Function(AppUnUthFailure value) unAuth,
    required TResult Function(AppNotFoundFailure value) notFound,
    required TResult Function(AppUnKnownFailure value) unknown,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkFailure value)? network,
    TResult? Function(AppUnUthFailure value)? unAuth,
    TResult? Function(AppNotFoundFailure value)? notFound,
    TResult? Function(AppUnKnownFailure value)? unknown,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkFailure value)? network,
    TResult Function(AppUnUthFailure value)? unAuth,
    TResult Function(AppNotFoundFailure value)? notFound,
    TResult Function(AppUnKnownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class AppUnUthFailure implements AppFailure {
  const factory AppUnUthFailure({required final String errorMessage}) =
      _$AppUnUthFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppUnUthFailureCopyWith<_$AppUnUthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppNotFoundFailureCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$AppNotFoundFailureCopyWith(_$AppNotFoundFailure value,
          $Res Function(_$AppNotFoundFailure) then) =
      __$$AppNotFoundFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AppNotFoundFailureCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$AppNotFoundFailure>
    implements _$$AppNotFoundFailureCopyWith<$Res> {
  __$$AppNotFoundFailureCopyWithImpl(
      _$AppNotFoundFailure _value, $Res Function(_$AppNotFoundFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AppNotFoundFailure(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppNotFoundFailure implements AppNotFoundFailure {
  const _$AppNotFoundFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailure.notFound(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotFoundFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotFoundFailureCopyWith<_$AppNotFoundFailure> get copyWith =>
      __$$AppNotFoundFailureCopyWithImpl<_$AppNotFoundFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) network,
    required TResult Function(String errorMessage) unAuth,
    required TResult Function(String errorMessage) notFound,
    required TResult Function(String errorMessage) unknown,
  }) {
    return notFound(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? network,
    TResult? Function(String errorMessage)? unAuth,
    TResult? Function(String errorMessage)? notFound,
    TResult? Function(String errorMessage)? unknown,
  }) {
    return notFound?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? network,
    TResult Function(String errorMessage)? unAuth,
    TResult Function(String errorMessage)? notFound,
    TResult Function(String errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkFailure value) network,
    required TResult Function(AppUnUthFailure value) unAuth,
    required TResult Function(AppNotFoundFailure value) notFound,
    required TResult Function(AppUnKnownFailure value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkFailure value)? network,
    TResult? Function(AppUnUthFailure value)? unAuth,
    TResult? Function(AppNotFoundFailure value)? notFound,
    TResult? Function(AppUnKnownFailure value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkFailure value)? network,
    TResult Function(AppUnUthFailure value)? unAuth,
    TResult Function(AppNotFoundFailure value)? notFound,
    TResult Function(AppUnKnownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class AppNotFoundFailure implements AppFailure {
  const factory AppNotFoundFailure({required final String errorMessage}) =
      _$AppNotFoundFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppNotFoundFailureCopyWith<_$AppNotFoundFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUnKnownFailureCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$AppUnKnownFailureCopyWith(
          _$AppUnKnownFailure value, $Res Function(_$AppUnKnownFailure) then) =
      __$$AppUnKnownFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AppUnKnownFailureCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$AppUnKnownFailure>
    implements _$$AppUnKnownFailureCopyWith<$Res> {
  __$$AppUnKnownFailureCopyWithImpl(
      _$AppUnKnownFailure _value, $Res Function(_$AppUnKnownFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AppUnKnownFailure(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppUnKnownFailure implements AppUnKnownFailure {
  const _$AppUnKnownFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppFailure.unknown(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUnKnownFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUnKnownFailureCopyWith<_$AppUnKnownFailure> get copyWith =>
      __$$AppUnKnownFailureCopyWithImpl<_$AppUnKnownFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) network,
    required TResult Function(String errorMessage) unAuth,
    required TResult Function(String errorMessage) notFound,
    required TResult Function(String errorMessage) unknown,
  }) {
    return unknown(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage)? network,
    TResult? Function(String errorMessage)? unAuth,
    TResult? Function(String errorMessage)? notFound,
    TResult? Function(String errorMessage)? unknown,
  }) {
    return unknown?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? network,
    TResult Function(String errorMessage)? unAuth,
    TResult Function(String errorMessage)? notFound,
    TResult Function(String errorMessage)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkFailure value) network,
    required TResult Function(AppUnUthFailure value) unAuth,
    required TResult Function(AppNotFoundFailure value) notFound,
    required TResult Function(AppUnKnownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkFailure value)? network,
    TResult? Function(AppUnUthFailure value)? unAuth,
    TResult? Function(AppNotFoundFailure value)? notFound,
    TResult? Function(AppUnKnownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkFailure value)? network,
    TResult Function(AppUnUthFailure value)? unAuth,
    TResult Function(AppNotFoundFailure value)? notFound,
    TResult Function(AppUnKnownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class AppUnKnownFailure implements AppFailure {
  const factory AppUnKnownFailure({required final String errorMessage}) =
      _$AppUnKnownFailure;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppUnKnownFailureCopyWith<_$AppUnKnownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
