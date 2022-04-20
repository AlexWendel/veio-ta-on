// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Local _$LocalFromJson(Map<String, dynamic> json) {
  return _Local.fromJson(json);
}

/// @nodoc
class _$LocalTearOff {
  const _$LocalTearOff();

  _Local call(
      {required String nome,
      required String endereco,
      required String bairro,
      required String cidade,
      required String uf,
      required String referencia,
      List<int> coordenadas = const [0, 0],
      List<Especialidade> especialidades = const <Especialidade>[]}) {
    return _Local(
      nome: nome,
      endereco: endereco,
      bairro: bairro,
      cidade: cidade,
      uf: uf,
      referencia: referencia,
      coordenadas: coordenadas,
      especialidades: especialidades,
    );
  }

  Local fromJson(Map<String, Object?> json) {
    return Local.fromJson(json);
  }
}

/// @nodoc
const $Local = _$LocalTearOff();

/// @nodoc
mixin _$Local {
  String get nome => throw _privateConstructorUsedError;
  String get endereco => throw _privateConstructorUsedError;
  String get bairro => throw _privateConstructorUsedError;
  String get cidade => throw _privateConstructorUsedError;
  String get uf => throw _privateConstructorUsedError;
  String get referencia => throw _privateConstructorUsedError;
  List<int> get coordenadas => throw _privateConstructorUsedError;
  List<Especialidade> get especialidades => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalCopyWith<Local> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalCopyWith<$Res> {
  factory $LocalCopyWith(Local value, $Res Function(Local) then) =
      _$LocalCopyWithImpl<$Res>;
  $Res call(
      {String nome,
      String endereco,
      String bairro,
      String cidade,
      String uf,
      String referencia,
      List<int> coordenadas,
      List<Especialidade> especialidades});
}

/// @nodoc
class _$LocalCopyWithImpl<$Res> implements $LocalCopyWith<$Res> {
  _$LocalCopyWithImpl(this._value, this._then);

  final Local _value;
  // ignore: unused_field
  final $Res Function(Local) _then;

  @override
  $Res call({
    Object? nome = freezed,
    Object? endereco = freezed,
    Object? bairro = freezed,
    Object? cidade = freezed,
    Object? uf = freezed,
    Object? referencia = freezed,
    Object? coordenadas = freezed,
    Object? especialidades = freezed,
  }) {
    return _then(_value.copyWith(
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      endereco: endereco == freezed
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
      bairro: bairro == freezed
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String,
      cidade: cidade == freezed
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as String,
      uf: uf == freezed
          ? _value.uf
          : uf // ignore: cast_nullable_to_non_nullable
              as String,
      referencia: referencia == freezed
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String,
      coordenadas: coordenadas == freezed
          ? _value.coordenadas
          : coordenadas // ignore: cast_nullable_to_non_nullable
              as List<int>,
      especialidades: especialidades == freezed
          ? _value.especialidades
          : especialidades // ignore: cast_nullable_to_non_nullable
              as List<Especialidade>,
    ));
  }
}

/// @nodoc
abstract class _$LocalCopyWith<$Res> implements $LocalCopyWith<$Res> {
  factory _$LocalCopyWith(_Local value, $Res Function(_Local) then) =
      __$LocalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nome,
      String endereco,
      String bairro,
      String cidade,
      String uf,
      String referencia,
      List<int> coordenadas,
      List<Especialidade> especialidades});
}

/// @nodoc
class __$LocalCopyWithImpl<$Res> extends _$LocalCopyWithImpl<$Res>
    implements _$LocalCopyWith<$Res> {
  __$LocalCopyWithImpl(_Local _value, $Res Function(_Local) _then)
      : super(_value, (v) => _then(v as _Local));

  @override
  _Local get _value => super._value as _Local;

  @override
  $Res call({
    Object? nome = freezed,
    Object? endereco = freezed,
    Object? bairro = freezed,
    Object? cidade = freezed,
    Object? uf = freezed,
    Object? referencia = freezed,
    Object? coordenadas = freezed,
    Object? especialidades = freezed,
  }) {
    return _then(_Local(
      nome: nome == freezed
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      endereco: endereco == freezed
          ? _value.endereco
          : endereco // ignore: cast_nullable_to_non_nullable
              as String,
      bairro: bairro == freezed
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String,
      cidade: cidade == freezed
          ? _value.cidade
          : cidade // ignore: cast_nullable_to_non_nullable
              as String,
      uf: uf == freezed
          ? _value.uf
          : uf // ignore: cast_nullable_to_non_nullable
              as String,
      referencia: referencia == freezed
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String,
      coordenadas: coordenadas == freezed
          ? _value.coordenadas
          : coordenadas // ignore: cast_nullable_to_non_nullable
              as List<int>,
      especialidades: especialidades == freezed
          ? _value.especialidades
          : especialidades // ignore: cast_nullable_to_non_nullable
              as List<Especialidade>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Local implements _Local {
  _$_Local(
      {required this.nome,
      required this.endereco,
      required this.bairro,
      required this.cidade,
      required this.uf,
      required this.referencia,
      this.coordenadas = const [0, 0],
      this.especialidades = const <Especialidade>[]});

  factory _$_Local.fromJson(Map<String, dynamic> json) =>
      _$$_LocalFromJson(json);

  @override
  final String nome;
  @override
  final String endereco;
  @override
  final String bairro;
  @override
  final String cidade;
  @override
  final String uf;
  @override
  final String referencia;
  @JsonKey()
  @override
  final List<int> coordenadas;
  @JsonKey()
  @override
  final List<Especialidade> especialidades;

  @override
  String toString() {
    return 'Local(nome: $nome, endereco: $endereco, bairro: $bairro, cidade: $cidade, uf: $uf, referencia: $referencia, coordenadas: $coordenadas, especialidades: $especialidades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Local &&
            const DeepCollectionEquality().equals(other.nome, nome) &&
            const DeepCollectionEquality().equals(other.endereco, endereco) &&
            const DeepCollectionEquality().equals(other.bairro, bairro) &&
            const DeepCollectionEquality().equals(other.cidade, cidade) &&
            const DeepCollectionEquality().equals(other.uf, uf) &&
            const DeepCollectionEquality()
                .equals(other.referencia, referencia) &&
            const DeepCollectionEquality()
                .equals(other.coordenadas, coordenadas) &&
            const DeepCollectionEquality()
                .equals(other.especialidades, especialidades));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nome),
      const DeepCollectionEquality().hash(endereco),
      const DeepCollectionEquality().hash(bairro),
      const DeepCollectionEquality().hash(cidade),
      const DeepCollectionEquality().hash(uf),
      const DeepCollectionEquality().hash(referencia),
      const DeepCollectionEquality().hash(coordenadas),
      const DeepCollectionEquality().hash(especialidades));

  @JsonKey(ignore: true)
  @override
  _$LocalCopyWith<_Local> get copyWith =>
      __$LocalCopyWithImpl<_Local>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalToJson(this);
  }
}

abstract class _Local implements Local {
  factory _Local(
      {required String nome,
      required String endereco,
      required String bairro,
      required String cidade,
      required String uf,
      required String referencia,
      List<int> coordenadas,
      List<Especialidade> especialidades}) = _$_Local;

  factory _Local.fromJson(Map<String, dynamic> json) = _$_Local.fromJson;

  @override
  String get nome;
  @override
  String get endereco;
  @override
  String get bairro;
  @override
  String get cidade;
  @override
  String get uf;
  @override
  String get referencia;
  @override
  List<int> get coordenadas;
  @override
  List<Especialidade> get especialidades;
  @override
  @JsonKey(ignore: true)
  _$LocalCopyWith<_Local> get copyWith => throw _privateConstructorUsedError;
}
