import 'package:hospital_maraba/app/models/exame.dart';
import 'package:hospital_maraba/app/models/local.dart';

import 'data.dart';

class Agendamento {
// ''[Consulta]
// - id_consulta (unique_id)
// - paciente (pacienteRef)
// - medico (medicoRef)
// - agendada_por (usuarioRef)
// - agendado_em (datetime)
// - local (localRef)
// - horario (datetime)
// - fez_checkin (bool)
// - checkin_por (gerenciadorRef)
// - fez_checkin_em (datetime)
// - confirmacao (bool)
// - confirmado_em (datetime)''

  Data data;
  Local local;
  Exame exame;

  Agendamento({required this.data, required this.local, required this.exame});
}
