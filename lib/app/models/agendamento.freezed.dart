// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agendamento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agendamento _$AgendamentoFromJson(Map<String, dynamic> json) {
  return _Agendamento.fromJson(json);
}

/// @nodoc
class _$AgendamentoTearOff {
  const _$AgendamentoTearOff();

  _Agendamento call(
      {required String id,
      required Paciente paciente,
      required Usuario agendadoPor,
      required DateTime agendadoPara,
      required DateTime agendadoEm,
      required Local local,
      required Especialidade especialidade,
      required EstagioDoAgendamento estadoAgendamento,
      bool confirmado = false,
      Usuario? confirmadoPor = null,
      bool fezCheckin = false,
      bool foiRemarcado = false,
      DateTime? fezCheckinEm,
      Usuario? checkinFeitoPor,
      DateTime? confirmadoEm,
      DateTime? remarcadoEm}) {
    return _Agendamento(
      id: id,
      paciente: paciente,
      agendadoPor: agendadoPor,
      agendadoPara: agendadoPara,
      agendadoEm: agendadoEm,
      local: local,
      especialidade: especialidade,
      estadoAgendamento: estadoAgendamento,
      confirmado: confirmado,
      confirmadoPor: confirmadoPor,
      fezCheckin: fezCheckin,
      foiRemarcado: foiRemarcado,
      fezCheckinEm: fezCheckinEm,
      checkinFeitoPor: checkinFeitoPor,
      confirmadoEm: confirmadoEm,
      remarcadoEm: remarcadoEm,
    );
  }

  Agendamento fromJson(Map<String, Object?> json) {
    return Agendamento.fromJson(json);
  }
}

/// @nodoc
const $Agendamento = _$AgendamentoTearOff();

/// @nodoc
mixin _$Agendamento {
  String get id => throw _privateConstructorUsedError;
  Paciente get paciente => throw _privateConstructorUsedError;
  Usuario get agendadoPor => throw _privateConstructorUsedError;
  DateTime get agendadoPara => throw _privateConstructorUsedError;
  DateTime get agendadoEm => throw _privateConstructorUsedError;
  Local get local => throw _privateConstructorUsedError;
  Especialidade get especialidade => throw _privateConstructorUsedError;
  EstagioDoAgendamento get estadoAgendamento =>
      throw _privateConstructorUsedError;
  bool get confirmado => throw _privateConstructorUsedError;
  Usuario? get confirmadoPor => throw _privateConstructorUsedError;
  bool get fezCheckin => throw _privateConstructorUsedError;
  bool get foiRemarcado => throw _privateConstructorUsedError;
  DateTime? get fezCheckinEm => throw _privateConstructorUsedError;
  Usuario? get checkinFeitoPor => throw _privateConstructorUsedError;
  DateTime? get confirmadoEm => throw _privateConstructorUsedError;
  DateTime? get remarcadoEm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendamentoCopyWith<Agendamento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendamentoCopyWith<$Res> {
  factory $AgendamentoCopyWith(
          Agendamento value, $Res Function(Agendamento) then) =
      _$AgendamentoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Paciente paciente,
      Usuario agendadoPor,
      DateTime agendadoPara,
      DateTime agendadoEm,
      Local local,
      Especialidade especialidade,
      EstagioDoAgendamento estadoAgendamento,
      bool confirmado,
      Usuario? confirmadoPor,
      bool fezCheckin,
      bool foiRemarcado,
      DateTime? fezCheckinEm,
      Usuario? checkinFeitoPor,
      DateTime? confirmadoEm,
      DateTime? remarcadoEm});

  $UsuarioCopyWith<$Res> get agendadoPor;
  $LocalCopyWith<$Res> get local;
  $EspecialidadeCopyWith<$Res> get especialidade;
  $UsuarioCopyWith<$Res>? get confirmadoPor;
  $UsuarioCopyWith<$Res>? get checkinFeitoPor;
}

/// @nodoc
class _$AgendamentoCopyWithImpl<$Res> implements $AgendamentoCopyWith<$Res> {
  _$AgendamentoCopyWithImpl(this._value, this._then);

  final Agendamento _value;
  // ignore: unused_field
  final $Res Function(Agendamento) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? paciente = freezed,
    Object? agendadoPor = freezed,
    Object? agendadoPara = freezed,
    Object? agendadoEm = freezed,
    Object? local = freezed,
    Object? especialidade = freezed,
    Object? estadoAgendamento = freezed,
    Object? confirmado = freezed,
    Object? confirmadoPor = freezed,
    Object? fezCheckin = freezed,
    Object? foiRemarcado = freezed,
    Object? fezCheckinEm = freezed,
    Object? checkinFeitoPor = freezed,
    Object? confirmadoEm = freezed,
    Object? remarcadoEm = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paciente: paciente == freezed
          ? _value.paciente
          : paciente // ignore: cast_nullable_to_non_nullable
              as Paciente,
      agendadoPor: agendadoPor == freezed
          ? _value.agendadoPor
          : agendadoPor // ignore: cast_nullable_to_non_nullable
              as Usuario,
      agendadoPara: agendadoPara == freezed
          ? _value.agendadoPara
          : agendadoPara // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agendadoEm: agendadoEm == freezed
          ? _value.agendadoEm
          : agendadoEm // ignore: cast_nullable_to_non_nullable
              as DateTime,
      local: local == freezed
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as Local,
      especialidade: especialidade == freezed
          ? _value.especialidade
          : especialidade // ignore: cast_nullable_to_non_nullable
              as Especialidade,
      estadoAgendamento: estadoAgendamento == freezed
          ? _value.estadoAgendamento
          : estadoAgendamento // ignore: cast_nullable_to_non_nullable
              as EstagioDoAgendamento,
      confirmado: confirmado == freezed
          ? _value.confirmado
          : confirmado // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmadoPor: confirmadoPor == freezed
          ? _value.confirmadoPor
          : confirmadoPor // ignore: cast_nullable_to_non_nullable
              as Usuario?,
      fezCheckin: fezCheckin == freezed
          ? _value.fezCheckin
          : fezCheckin // ignore: cast_nullable_to_non_nullable
              as bool,
      foiRemarcado: foiRemarcado == freezed
          ? _value.foiRemarcado
          : foiRemarcado // ignore: cast_nullable_to_non_nullable
              as bool,
      fezCheckinEm: fezCheckinEm == freezed
          ? _value.fezCheckinEm
          : fezCheckinEm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkinFeitoPor: checkinFeitoPor == freezed
          ? _value.checkinFeitoPor
          : checkinFeitoPor // ignore: cast_nullable_to_non_nullable
              as Usuario?,
      confirmadoEm: confirmadoEm == freezed
          ? _value.confirmadoEm
          : confirmadoEm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remarcadoEm: remarcadoEm == freezed
          ? _value.remarcadoEm
          : remarcadoEm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $UsuarioCopyWith<$Res> get agendadoPor {
    return $UsuarioCopyWith<$Res>(_value.agendadoPor, (value) {
      return _then(_value.copyWith(agendadoPor: value));
    });
  }

  @override
  $LocalCopyWith<$Res> get local {
    return $LocalCopyWith<$Res>(_value.local, (value) {
      return _then(_value.copyWith(local: value));
    });
  }

  @override
  $EspecialidadeCopyWith<$Res> get especialidade {
    return $EspecialidadeCopyWith<$Res>(_value.especialidade, (value) {
      return _then(_value.copyWith(especialidade: value));
    });
  }

  @override
  $UsuarioCopyWith<$Res>? get confirmadoPor {
    if (_value.confirmadoPor == null) {
      return null;
    }

    return $UsuarioCopyWith<$Res>(_value.confirmadoPor!, (value) {
      return _then(_value.copyWith(confirmadoPor: value));
    });
  }

  @override
  $UsuarioCopyWith<$Res>? get checkinFeitoPor {
    if (_value.checkinFeitoPor == null) {
      return null;
    }

    return $UsuarioCopyWith<$Res>(_value.checkinFeitoPor!, (value) {
      return _then(_value.copyWith(checkinFeitoPor: value));
    });
  }
}

/// @nodoc
abstract class _$AgendamentoCopyWith<$Res>
    implements $AgendamentoCopyWith<$Res> {
  factory _$AgendamentoCopyWith(
          _Agendamento value, $Res Function(_Agendamento) then) =
      __$AgendamentoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Paciente paciente,
      Usuario agendadoPor,
      DateTime agendadoPara,
      DateTime agendadoEm,
      Local local,
      Especialidade especialidade,
      EstagioDoAgendamento estadoAgendamento,
      bool confirmado,
      Usuario? confirmadoPor,
      bool fezCheckin,
      bool foiRemarcado,
      DateTime? fezCheckinEm,
      Usuario? checkinFeitoPor,
      DateTime? confirmadoEm,
      DateTime? remarcadoEm});

  @override
  $UsuarioCopyWith<$Res> get agendadoPor;
  @override
  $LocalCopyWith<$Res> get local;
  @override
  $EspecialidadeCopyWith<$Res> get especialidade;
  @override
  $UsuarioCopyWith<$Res>? get confirmadoPor;
  @override
  $UsuarioCopyWith<$Res>? get checkinFeitoPor;
}

/// @nodoc
class __$AgendamentoCopyWithImpl<$Res> extends _$AgendamentoCopyWithImpl<$Res>
    implements _$AgendamentoCopyWith<$Res> {
  __$AgendamentoCopyWithImpl(
      _Agendamento _value, $Res Function(_Agendamento) _then)
      : super(_value, (v) => _then(v as _Agendamento));

  @override
  _Agendamento get _value => super._value as _Agendamento;

  @override
  $Res call({
    Object? id = freezed,
    Object? paciente = freezed,
    Object? agendadoPor = freezed,
    Object? agendadoPara = freezed,
    Object? agendadoEm = freezed,
    Object? local = freezed,
    Object? especialidade = freezed,
    Object? estadoAgendamento = freezed,
    Object? confirmado = freezed,
    Object? confirmadoPor = freezed,
    Object? fezCheckin = freezed,
    Object? foiRemarcado = freezed,
    Object? fezCheckinEm = freezed,
    Object? checkinFeitoPor = freezed,
    Object? confirmadoEm = freezed,
    Object? remarcadoEm = freezed,
  }) {
    return _then(_Agendamento(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paciente: paciente == freezed
          ? _value.paciente
          : paciente // ignore: cast_nullable_to_non_nullable
              as Paciente,
      agendadoPor: agendadoPor == freezed
          ? _value.agendadoPor
          : agendadoPor // ignore: cast_nullable_to_non_nullable
              as Usuario,
      agendadoPara: agendadoPara == freezed
          ? _value.agendadoPara
          : agendadoPara // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agendadoEm: agendadoEm == freezed
          ? _value.agendadoEm
          : agendadoEm // ignore: cast_nullable_to_non_nullable
              as DateTime,
      local: local == freezed
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as Local,
      especialidade: especialidade == freezed
          ? _value.especialidade
          : especialidade // ignore: cast_nullable_to_non_nullable
              as Especialidade,
      estadoAgendamento: estadoAgendamento == freezed
          ? _value.estadoAgendamento
          : estadoAgendamento // ignore: cast_nullable_to_non_nullable
              as EstagioDoAgendamento,
      confirmado: confirmado == freezed
          ? _value.confirmado
          : confirmado // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmadoPor: confirmadoPor == freezed
          ? _value.confirmadoPor
          : confirmadoPor // ignore: cast_nullable_to_non_nullable
              as Usuario?,
      fezCheckin: fezCheckin == freezed
          ? _value.fezCheckin
          : fezCheckin // ignore: cast_nullable_to_non_nullable
              as bool,
      foiRemarcado: foiRemarcado == freezed
          ? _value.foiRemarcado
          : foiRemarcado // ignore: cast_nullable_to_non_nullable
              as bool,
      fezCheckinEm: fezCheckinEm == freezed
          ? _value.fezCheckinEm
          : fezCheckinEm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkinFeitoPor: checkinFeitoPor == freezed
          ? _value.checkinFeitoPor
          : checkinFeitoPor // ignore: cast_nullable_to_non_nullable
              as Usuario?,
      confirmadoEm: confirmadoEm == freezed
          ? _value.confirmadoEm
          : confirmadoEm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remarcadoEm: remarcadoEm == freezed
          ? _value.remarcadoEm
          : remarcadoEm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Agendamento implements _Agendamento {
  _$_Agendamento(
      {required this.id,
      required this.paciente,
      required this.agendadoPor,
      required this.agendadoPara,
      required this.agendadoEm,
      required this.local,
      required this.especialidade,
      required this.estadoAgendamento,
      this.confirmado = false,
      this.confirmadoPor = null,
      this.fezCheckin = false,
      this.foiRemarcado = false,
      this.fezCheckinEm,
      this.checkinFeitoPor,
      this.confirmadoEm,
      this.remarcadoEm});

  factory _$_Agendamento.fromJson(Map<String, dynamic> json) =>
      _$$_AgendamentoFromJson(json);

  @override
  final String id;
  @override
  final Paciente paciente;
  @override
  final Usuario agendadoPor;
  @override
  final DateTime agendadoPara;
  @override
  final DateTime agendadoEm;
  @override
  final Local local;
  @override
  final Especialidade especialidade;
  @override
  final EstagioDoAgendamento estadoAgendamento;
  @JsonKey()
  @override
  final bool confirmado;
  @JsonKey()
  @override
  final Usuario? confirmadoPor;
  @JsonKey()
  @override
  final bool fezCheckin;
  @JsonKey()
  @override
  final bool foiRemarcado;
  @override
  final DateTime? fezCheckinEm;
  @override
  final Usuario? checkinFeitoPor;
  @override
  final DateTime? confirmadoEm;
  @override
  final DateTime? remarcadoEm;

  @override
  String toString() {
    return 'Agendamento(id: $id, paciente: $paciente, agendadoPor: $agendadoPor, agendadoPara: $agendadoPara, agendadoEm: $agendadoEm, local: $local, especialidade: $especialidade, estadoAgendamento: $estadoAgendamento, confirmado: $confirmado, confirmadoPor: $confirmadoPor, fezCheckin: $fezCheckin, foiRemarcado: $foiRemarcado, fezCheckinEm: $fezCheckinEm, checkinFeitoPor: $checkinFeitoPor, confirmadoEm: $confirmadoEm, remarcadoEm: $remarcadoEm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Agendamento &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.paciente, paciente) &&
            const DeepCollectionEquality()
                .equals(other.agendadoPor, agendadoPor) &&
            const DeepCollectionEquality()
                .equals(other.agendadoPara, agendadoPara) &&
            const DeepCollectionEquality()
                .equals(other.agendadoEm, agendadoEm) &&
            const DeepCollectionEquality().equals(other.local, local) &&
            const DeepCollectionEquality()
                .equals(other.especialidade, especialidade) &&
            const DeepCollectionEquality()
                .equals(other.estadoAgendamento, estadoAgendamento) &&
            const DeepCollectionEquality()
                .equals(other.confirmado, confirmado) &&
            const DeepCollectionEquality()
                .equals(other.confirmadoPor, confirmadoPor) &&
            const DeepCollectionEquality()
                .equals(other.fezCheckin, fezCheckin) &&
            const DeepCollectionEquality()
                .equals(other.foiRemarcado, foiRemarcado) &&
            const DeepCollectionEquality()
                .equals(other.fezCheckinEm, fezCheckinEm) &&
            const DeepCollectionEquality()
                .equals(other.checkinFeitoPor, checkinFeitoPor) &&
            const DeepCollectionEquality()
                .equals(other.confirmadoEm, confirmadoEm) &&
            const DeepCollectionEquality()
                .equals(other.remarcadoEm, remarcadoEm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(paciente),
      const DeepCollectionEquality().hash(agendadoPor),
      const DeepCollectionEquality().hash(agendadoPara),
      const DeepCollectionEquality().hash(agendadoEm),
      const DeepCollectionEquality().hash(local),
      const DeepCollectionEquality().hash(especialidade),
      const DeepCollectionEquality().hash(estadoAgendamento),
      const DeepCollectionEquality().hash(confirmado),
      const DeepCollectionEquality().hash(confirmadoPor),
      const DeepCollectionEquality().hash(fezCheckin),
      const DeepCollectionEquality().hash(foiRemarcado),
      const DeepCollectionEquality().hash(fezCheckinEm),
      const DeepCollectionEquality().hash(checkinFeitoPor),
      const DeepCollectionEquality().hash(confirmadoEm),
      const DeepCollectionEquality().hash(remarcadoEm));

  @JsonKey(ignore: true)
  @override
  _$AgendamentoCopyWith<_Agendamento> get copyWith =>
      __$AgendamentoCopyWithImpl<_Agendamento>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgendamentoToJson(this);
  }
}

abstract class _Agendamento implements Agendamento {
  factory _Agendamento(
      {required String id,
      required Paciente paciente,
      required Usuario agendadoPor,
      required DateTime agendadoPara,
      required DateTime agendadoEm,
      required Local local,
      required Especialidade especialidade,
      required EstagioDoAgendamento estadoAgendamento,
      bool confirmado,
      Usuario? confirmadoPor,
      bool fezCheckin,
      bool foiRemarcado,
      DateTime? fezCheckinEm,
      Usuario? checkinFeitoPor,
      DateTime? confirmadoEm,
      DateTime? remarcadoEm}) = _$_Agendamento;

  factory _Agendamento.fromJson(Map<String, dynamic> json) =
      _$_Agendamento.fromJson;

  @override
  String get id;
  @override
  Paciente get paciente;
  @override
  Usuario get agendadoPor;
  @override
  DateTime get agendadoPara;
  @override
  DateTime get agendadoEm;
  @override
  Local get local;
  @override
  Especialidade get especialidade;
  @override
  EstagioDoAgendamento get estadoAgendamento;
  @override
  bool get confirmado;
  @override
  Usuario? get confirmadoPor;
  @override
  bool get fezCheckin;
  @override
  bool get foiRemarcado;
  @override
  DateTime? get fezCheckinEm;
  @override
  Usuario? get checkinFeitoPor;
  @override
  DateTime? get confirmadoEm;
  @override
  DateTime? get remarcadoEm;
  @override
  @JsonKey(ignore: true)
  _$AgendamentoCopyWith<_Agendamento> get copyWith =>
      throw _privateConstructorUsedError;
}
