// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'especialidade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Especialidade _$EspecialidadeFromJson(Map<String, dynamic> json) {
  return _Especialidade.fromJson(json);
}

/// @nodoc
class _$EspecialidadeTearOff {
  const _$EspecialidadeTearOff();

  _Especialidade call(
      {required String id,
      required String nome,
      required String descricao,
      required String nomeMedicoEspecialista}) {
    return _Especialidade(
      id: id,
      nome: nome,
      descricao: descricao,
      nomeMedicoEspecialista: nomeMedicoEspecialista,
    );
  }

  Especialidade fromJson(Map<String, Object?> json) {
    return Especialidade.fromJson(json);
  }
}

/// @nodoc
const $Especialidade = _$EspecialidadeTearOff();

/// @nodoc
mixin _$Especialidade {
  String get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  String get nomeMedicoEspecialista => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EspecialidadeCopyWith<Especialidade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EspecialidadeCopyWith<$Res> {
  factory $EspecialidadeCopyWith(
          Especialidade value, $Res Function(Especialidade) then) =
      _$EspecialidadeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String nome,
      String descricao,
      String nomeMedicoEspecialista});
}

/// @nodoc
class _$EspecialidadeCopyWithImpl<$Res>
    implements $EspecialidadeCopyWith<$Res> {
  _$EspecialidadeCopyWithImpl(this._value, this._then);

  final Especialidade _value;
  // ignore: unused_field
  final $Res Function(Especialidade) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? nomeMedicoEspecialista = freezed,
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
      descricao: descricao == freezed
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      nomeMedicoEspecialista: nomeMedicoEspecialista == freezed
          ? _value.nomeMedicoEspecialista
          : nomeMedicoEspecialista // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EspecialidadeCopyWith<$Res>
    implements $EspecialidadeCopyWith<$Res> {
  factory _$EspecialidadeCopyWith(
          _Especialidade value, $Res Function(_Especialidade) then) =
      __$EspecialidadeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String nome,
      String descricao,
      String nomeMedicoEspecialista});
}

/// @nodoc
class __$EspecialidadeCopyWithImpl<$Res>
    extends _$EspecialidadeCopyWithImpl<$Res>
    implements _$EspecialidadeCopyWith<$Res> {
  __$EspecialidadeCopyWithImpl(
      _Especialidade _value, $Res Function(_Especialidade) _then)
      : super(_value, (v) => _then(v as _Especialidade));

  @override
  _Especialidade get _value => super._value as _Especialidade;

  @override
  $Res call({
    Object? id = freezed,
    Object? nome = freezed,
    Object? descricao = freezed,
    Object? nomeMedicoEspecialista = freezed,
  }) {
    return _then(_Especialidade(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: descricao == freezed
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      nomeMedicoEspecialista: nomeMedicoEspecialista == freezed
          ? _value.nomeMedicoEspecialista
          : nomeMedicoEspecialista // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Especialidade implements _Especialidade {
  const _$_Especialidade(
      {required this.id,
      required this.nome,
      required this.descricao,
      required this.nomeMedicoEspecialista});

  factory _$_Especialidade.fromJson(Map<String, dynamic> json) =>
      _$$_EspecialidadeFromJson(json);

  @override
  final String id;
  @override
  final String nome;
  @override
  final String descricao;
  @override
  final String nomeMedicoEspecialista;

  @override
  String toString() {
    return 'Especialidade(id: $id, nome: $nome, descricao: $descricao, nomeMedicoEspecialista: $nomeMedicoEspecialista)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Especialidade &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nome, nome) &&
            const DeepCollectionEquality().equals(other.descricao, descricao) &&
            const DeepCollectionEquality()
                .equals(other.nomeMedicoEspecialista, nomeMedicoEspecialista));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nome),
      const DeepCollectionEquality().hash(descricao),
      const DeepCollectionEquality().hash(nomeMedicoEspecialista));

  @JsonKey(ignore: true)
  @override
  _$EspecialidadeCopyWith<_Especialidade> get copyWith =>
      __$EspecialidadeCopyWithImpl<_Especialidade>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EspecialidadeToJson(this);
  }
}

abstract class _Especialidade implements Especialidade {
  const factory _Especialidade(
      {required String id,
      required String nome,
      required String descricao,
      required String nomeMedicoEspecialista}) = _$_Especialidade;

  factory _Especialidade.fromJson(Map<String, dynamic> json) =
      _$_Especialidade.fromJson;

  @override
  String get id;
  @override
  String get nome;
  @override
  String get descricao;
  @override
  String get nomeMedicoEspecialista;
  @override
  @JsonKey(ignore: true)
  _$EspecialidadeCopyWith<_Especialidade> get copyWith =>
      throw _privateConstructorUsedError;
}
