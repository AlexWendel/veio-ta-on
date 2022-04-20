// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return _Usuario.fromJson(json);
}

/// @nodoc
class _$UsuarioTearOff {
  const _$UsuarioTearOff();

  _Usuario call(
      {required String id,
      required String nome,
      required String sobrenome,
      required String rg,
      required String cpf,
      String? telefone,
      String? email}) {
    return _Usuario(
      id: id,
      nome: nome,
      sobrenome: sobrenome,
      rg: rg,
      cpf: cpf,
      telefone: telefone,
      email: email,
    );
  }

  Usuario fromJson(Map<String, Object?> json) {
    return Usuario.fromJson(json);
  }
}

/// @nodoc
const $Usuario = _$UsuarioTearOff();

/// @nodoc
mixin _$Usuario {
  String get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get sobrenome => throw _privateConstructorUsedError;
  String get rg => throw _privateConstructorUsedError;
  String get cpf => throw _privateConstructorUsedError;
  String? get telefone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioCopyWith<Usuario> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String nome,
      String sobrenome,
      String rg,
      String cpf,
      String? telefone,
      String? email});
}

/// @nodoc
class _$UsuarioCopyWithImpl<$Res> implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  final Usuario _value;
  // ignore: unused_field
  final $Res Function(Usuario) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? sobrenome = freezed,
    Object? rg = freezed,
    Object? cpf = freezed,
    Object? telefone = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      sobrenome: sobrenome == freezed
          ? _value.sobrenome
          : sobrenome // ignore: cast_nullable_to_non_nullable
              as String,
      rg: rg == freezed
          ? _value.rg
          : rg // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      telefone: telefone == freezed
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$UsuarioCopyWith(_Usuario value, $Res Function(_Usuario) then) =
      __$UsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String nome,
      String sobrenome,
      String rg,
      String cpf,
      String? telefone,
      String? email});
}

/// @nodoc
class __$UsuarioCopyWithImpl<$Res> extends _$UsuarioCopyWithImpl<$Res>
    implements _$UsuarioCopyWith<$Res> {
  __$UsuarioCopyWithImpl(_Usuario _value, $Res Function(_Usuario) _then)
      : super(_value, (v) => _then(v as _Usuario));

  @override
  _Usuario get _value => super._value as _Usuario;

  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? sobrenome = freezed,
    Object? rg = freezed,
    Object? cpf = freezed,
    Object? telefone = freezed,
    Object? email = freezed,
  }) {
    return _then(_Usuario(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      sobrenome: sobrenome == freezed
          ? _value.sobrenome
          : sobrenome // ignore: cast_nullable_to_non_nullable
              as String,
      rg: rg == freezed
          ? _value.rg
          : rg // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      telefone: telefone == freezed
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Usuario implements _Usuario {
  _$_Usuario(
      {required this.id,
      required this.nome,
      required this.sobrenome,
      required this.rg,
      required this.cpf,
      this.telefone,
      this.email});

  factory _$_Usuario.fromJson(Map<String, dynamic> json) =>
      _$$_UsuarioFromJson(json);

  @override
  final String id;
  @override
  final String nome;
  @override
  final String sobrenome;
  @override
  final String rg;
  @override
  final String cpf;
  @override
  final String? telefone;
  @override
  final String? email;

  @override
  String toString() {
    return 'Usuario(id: $id, nome: $nome, sobrenome: $sobrenome, rg: $rg, cpf: $cpf, telefone: $telefone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Usuario &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nome, nome) &&
            const DeepCollectionEquality().equals(other.sobrenome, sobrenome) &&
            const DeepCollectionEquality().equals(other.rg, rg) &&
            const DeepCollectionEquality().equals(other.cpf, cpf) &&
            const DeepCollectionEquality().equals(other.telefone, telefone) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nome),
      const DeepCollectionEquality().hash(sobrenome),
      const DeepCollectionEquality().hash(rg),
      const DeepCollectionEquality().hash(cpf),
      const DeepCollectionEquality().hash(telefone),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UsuarioCopyWith<_Usuario> get copyWith =>
      __$UsuarioCopyWithImpl<_Usuario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsuarioToJson(this);
  }
}

abstract class _Usuario implements Usuario {
  factory _Usuario(
      {required String id,
      required String nome,
      required String sobrenome,
      required String rg,
      required String cpf,
      String? telefone,
      String? email}) = _$_Usuario;

  factory _Usuario.fromJson(Map<String, dynamic> json) = _$_Usuario.fromJson;

  @override
  String get id;
  @override
  String get nome;
  @override
  String get sobrenome;
  @override
  String get rg;
  @override
  String get cpf;
  @override
  String? get telefone;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$UsuarioCopyWith<_Usuario> get copyWith =>
      throw _privateConstructorUsedError;
}
