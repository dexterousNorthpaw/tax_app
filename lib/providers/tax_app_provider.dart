import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class TaxAppProvider extends ChangeNotifier {
  static const apiEndpoint =
      "http://assettrack.com.ng/api/Generator/NewTaxPayerId/12,23,12,12,2";

  bool isLoading = true;
  String error = '';

  String TaxPayerId = "";

  getTaxPayerID() async {
    try {
      Response response = await http.get(Uri.parse(apiEndpoint));
      if (response.statusCode == 200) {
        TaxPayerId = response.body;
      } else {
        error = response.statusCode.toString();
      }
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;
    notifyListeners();
  }
}
