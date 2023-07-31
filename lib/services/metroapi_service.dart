import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EstadoLinha {
  String linhaAzul;
  String linhaVerde;
  String linhaVermelha;
  String linhaAmarela;

  EstadoLinha(
      this.linhaAzul, this.linhaVerde, this.linhaVermelha, this.linhaAmarela);
}

Future<String> getAccessToken() async {
  final headersGetToken = {
    'Authorization': dotenv.env['METROAUTH']!,
  };

  final dataGetToken = {
    'grant_type': 'password',
    'username': dotenv.env['METROUSER']!,
    'password': dotenv.env['METROPASS']!,
  };

  final responseGetToken = await http.post(
    Uri.parse('https://api.metrolisboa.pt:8243/token'),
    headers: headersGetToken,
    body: dataGetToken,
  );
  final responseJson = json.decode(responseGetToken.body);
  return responseJson['access_token'];
}

Future<Map<String, dynamic>> responseJson(String link) async {
  final headersGetInformation = {
    'accept': 'application/json',
    'Authorization': 'Bearer ${await getAccessToken()}',
  };

  final responseJson = await http.get(
    Uri.parse('https://api.metrolisboa.pt:8243/estadoServicoML/1.0.1$link'),
    headers: headersGetInformation,
  );

  final responseJsonDecoded = json.decode(responseJson.body);
  return responseJsonDecoded;
}

Future<EstadoLinha> estadoLinhas() async {
  final respostaTodos = await responseJson('/estadoLinha/todos');
  final linhas = ['amarela', 'azul', 'verde', 'vermelha'];
  Map<String, String> estadoTodos = new Map<String, String>();

  for (final linha in linhas) {
    if (respostaTodos['resposta'][linha.toLowerCase()] == ' Ok') {
      estadoTodos[linha] = 'A linha $linha está a funcionar corretamente.';
    } else {
      estadoTodos[linha] =
          'A linha $linha está com problemas.\n O problema é: ${respostaTodos["resposta"][linha.toLowerCase()]}';
      // textEstadoTodasLinhas +=
      //     '***A linha $linha está com problemas***.\n O problema é: ${respostaTodos["resposta"][linha.toLowerCase()]}\n\n';
    }
  }
  EstadoLinha estadolinasfinal = EstadoLinha(
      estadoTodos["azul"].toString(),
      estadoTodos["verde"].toString(),
      estadoTodos["vermelha"].toString(),
      estadoTodos["amarela"].toString());

  return estadolinasfinal;
}
