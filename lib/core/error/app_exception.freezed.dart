// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppException {
  String? get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) network,
    required TResult Function(String? errorMessage) unAuth,
    required TResult Function(String? errorMessage) notFound,
    required TResult Function(String? errorMessage) unknown,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? network,
    TResult? Function(String? errorMessage)? unAuth,
    TResult? Function(String? errorMessage)? notFound,
    TResult? Function(String? errorMessage)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? network,
    TResult Function(String? errorMessage)? unAuth,
    TResult Function(String? errorMessage)? notFound,
    TResult Function(String? errorMessage)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkException value) network,
    required TResult Function(AppUnUthException value) unAuth,
    required TResult Function(AppNotFoundException value) notFound,
    required TResult Function(AppUnKnownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkException value)? network,
    TResult? Function(AppUnUthException value)? unAuth,
    TResult? Function(AppNotFoundException value)? notFound,
    TResult? Function(AppUnKnownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkException value)? network,
    TResult Function(AppUnUthException value)? unAuth,
    TResult Function(AppNotFoundException value)? notFound,
    TResult Function(AppUnKnownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNetworkExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$AppNetworkExceptionCopyWith(_$AppNetworkException value,
          $Res Function(_$AppNetworkException) then) =
      __$$AppNetworkExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$AppNetworkExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppNetworkException>
    implements _$$AppNetworkExceptionCopyWith<$Res> {
  __$$AppNetworkExceptionCopyWithImpl(
      _$AppNetworkException _value, $Res Function(_$AppNetworkException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AppNetworkException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppNetworkException implements AppNetworkException {
  const _$AppNetworkException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.network(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNetworkException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNetworkExceptionCopyWith<_$AppNetworkException> get copyWith =>
      __$$AppNetworkExceptionCopyWithImpl<_$AppNetworkException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) network,
    required TResult Function(String? errorMessage) unAuth,
    required TResult Function(String? errorMessage) notFound,
    required TResult Function(String? errorMessage) unknown,
  }) {
    return network(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? network,
    TResult? Function(String? errorMessage)? unAuth,
    TResult? Function(String? errorMessage)? notFound,
    TResult? Function(String? errorMessage)? unknown,
  }) {
    return network?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? network,
    TResult Function(String? errorMessage)? unAuth,
    TResult Function(String? errorMessage)? notFound,
    TResult Function(String? errorMessage)? unknown,
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
    required TResult Function(AppNetworkException value) network,
    required TResult Function(AppUnUthException value) unAuth,
    required TResult Function(AppNotFoundException value) notFound,
    required TResult Function(AppUnKnownException value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkException value)? network,
    TResult? Function(AppUnUthException value)? unAuth,
    TResult? Function(AppNotFoundException value)? notFound,
    TResult? Function(AppUnKnownException value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkException value)? network,
    TResult Function(AppUnUthException value)? unAuth,
    TResult Function(AppNotFoundException value)? notFound,
    TResult Function(AppUnKnownException value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class AppNetworkException implements AppException {
  const factory AppNetworkException({final String? errorMessage}) =
      _$AppNetworkException;

  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppNetworkExceptionCopyWith<_$AppNetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUnUthExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$AppUnUthExceptionCopyWith(
          _$AppUnUthException value, $Res Function(_$AppUnUthException) then) =
      __$$AppUnUthExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$AppUnUthExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppUnUthException>
    implements _$$AppUnUthExceptionCopyWith<$Res> {
  __$$AppUnUthExceptionCopyWithImpl(
      _$AppUnUthException _value, $Res Function(_$AppUnUthException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AppUnUthException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppUnUthException implements AppUnUthException {
  const _$AppUnUthException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.unAuth(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUnUthException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUnUthExceptionCopyWith<_$AppUnUthException> get copyWith =>
      __$$AppUnUthExceptionCopyWithImpl<_$AppUnUthException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) network,
    required TResult Function(String? errorMessage) unAuth,
    required TResult Function(String? errorMessage) notFound,
    required TResult Function(String? errorMessage) unknown,
  }) {
    return unAuth(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? network,
    TResult? Function(String? errorMessage)? unAuth,
    TResult? Function(String? errorMessage)? notFound,
    TResult? Function(String? errorMessage)? unknown,
  }) {
    return unAuth?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? network,
    TResult Function(String? errorMessage)? unAuth,
    TResult Function(String? errorMessage)? notFound,
    TResult Function(String? errorMessage)? unknown,
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
    required TResult Function(AppNetworkException value) network,
    required TResult Function(AppUnUthException value) unAuth,
    required TResult Function(AppNotFoundException value) notFound,
    required TResult Function(AppUnKnownException value) unknown,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkException value)? network,
    TResult? Function(AppUnUthException value)? unAuth,
    TResult? Function(AppNotFoundException value)? notFound,
    TResult? Function(AppUnKnownException value)? unknown,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkException value)? network,
    TResult Function(AppUnUthException value)? unAuth,
    TResult Function(AppNotFoundException value)? notFound,
    TResult Function(AppUnKnownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class AppUnUthException implements AppException {
  const factory AppUnUthException({final String? errorMessage}) =
      _$AppUnUthException;

  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppUnUthExceptionCopyWith<_$AppUnUthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppNotFoundExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$AppNotFoundExceptionCopyWith(_$AppNotFoundException value,
          $Res Function(_$AppNotFoundException) then) =
      __$$AppNotFoundExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$AppNotFoundExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppNotFoundException>
    implements _$$AppNotFoundExceptionCopyWith<$Res> {
  __$$AppNotFoundExceptionCopyWithImpl(_$AppNotFoundException _value,
      $Res Function(_$AppNotFoundException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AppNotFoundException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppNotFoundException implements AppNotFoundException {
  const _$AppNotFoundException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.notFound(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotFoundException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotFoundExceptionCopyWith<_$AppNotFoundException> get copyWith =>
      __$$AppNotFoundExceptionCopyWithImpl<_$AppNotFoundException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) network,
    required TResult Function(String? errorMessage) unAuth,
    required TResult Function(String? errorMessage) notFound,
    required TResult Function(String? errorMessage) unknown,
  }) {
    return notFound(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? network,
    TResult? Function(String? errorMessage)? unAuth,
    TResult? Function(String? errorMessage)? notFound,
    TResult? Function(String? errorMessage)? unknown,
  }) {
    return notFound?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? network,
    TResult Function(String? errorMessage)? unAuth,
    TResult Function(String? errorMessage)? notFound,
    TResult Function(String? errorMessage)? unknown,
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
    required TResult Function(AppNetworkException value) network,
    required TResult Function(AppUnUthException value) unAuth,
    required TResult Function(AppNotFoundException value) notFound,
    required TResult Function(AppUnKnownException value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkException value)? network,
    TResult? Function(AppUnUthException value)? unAuth,
    TResult? Function(AppNotFoundException value)? notFound,
    TResult? Function(AppUnKnownException value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkException value)? network,
    TResult Function(AppUnUthException value)? unAuth,
    TResult Function(AppNotFoundException value)? notFound,
    TResult Function(AppUnKnownException value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class AppNotFoundException implements AppException {
  const factory AppNotFoundException({final String? errorMessage}) =
      _$AppNotFoundException;

  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppNotFoundExceptionCopyWith<_$AppNotFoundException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppUnKnownExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$AppUnKnownExceptionCopyWith(_$AppUnKnownException value,
          $Res Function(_$AppUnKnownException) then) =
      __$$AppUnKnownExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$AppUnKnownExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppUnKnownException>
    implements _$$AppUnKnownExceptionCopyWith<$Res> {
  __$$AppUnKnownExceptionCopyWithImpl(
      _$AppUnKnownException _value, $Res Function(_$AppUnKnownException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AppUnKnownException(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppUnKnownException implements AppUnKnownException {
  const _$AppUnKnownException({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AppException.unknown(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUnKnownException &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUnKnownExceptionCopyWith<_$AppUnKnownException> get copyWith =>
      __$$AppUnKnownExceptionCopyWithImpl<_$AppUnKnownException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) network,
    required TResult Function(String? errorMessage) unAuth,
    required TResult Function(String? errorMessage) notFound,
    required TResult Function(String? errorMessage) unknown,
  }) {
    return unknown(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? network,
    TResult? Function(String? errorMessage)? unAuth,
    TResult? Function(String? errorMessage)? notFound,
    TResult? Function(String? errorMessage)? unknown,
  }) {
    return unknown?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? network,
    TResult Function(String? errorMessage)? unAuth,
    TResult Function(String? errorMessage)? notFound,
    TResult Function(String? errorMessage)? unknown,
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
    required TResult Function(AppNetworkException value) network,
    required TResult Function(AppUnUthException value) unAuth,
    required TResult Function(AppNotFoundException value) notFound,
    required TResult Function(AppUnKnownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkException value)? network,
    TResult? Function(AppUnUthException value)? unAuth,
    TResult? Function(AppNotFoundException value)? notFound,
    TResult? Function(AppUnKnownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkException value)? network,
    TResult Function(AppUnUthException value)? unAuth,
    TResult Function(AppNotFoundException value)? notFound,
    TResult Function(AppUnKnownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class AppUnKnownException implements AppException {
  const factory AppUnKnownException({final String? errorMessage}) =
      _$AppUnKnownException;

  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AppUnKnownExceptionCopyWith<_$AppUnKnownException> get copyWith =>
      throw _privateConstructorUsedError;
}
