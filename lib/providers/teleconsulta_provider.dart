import 'package:appmedicolaluz/models/Teleconsulta.dart';
import 'package:appmedicolaluz/user_preferences/user_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:appmedicolaluz/utils/config.dart';

class TeleconsultaProvider {
  Future<List<Teleconsulta>> getTeleconsultaPendiente() async {
    final prefs = new UserPreferences();
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${prefs.token}'
    };

    final url = Uri.https(urlApi, '$versionApi/teleconsulta/pendingMedicTeleconsultation');

    if (prefs.token != '') {
      final resp = await http.get(url, headers: requestHeaders);
      final decodedData = json.decode(resp.body);
      final teleconsultasPendientes = new Teleconsultas.fromJsonList(decodedData);
      return teleconsultasPendientes.items;
    }else {
      return [];
    }
  }

}


