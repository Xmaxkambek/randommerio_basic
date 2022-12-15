import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map> getCard() async {
  Uri url = Uri(
    scheme: 'https',
    host: 'randommer.io',
    path: 'api/Card/',
  );

  //  Create a header for the request
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Api-Key': 'a45a594e67814c30883787b95fec5af1'
  };
// Make a get request to the API
  http.Response response = await http.get(
    url,
    headers: headers,
  );
  // Convert the response body to a Map
  Map card = jsonDecode(response.body);
  // Return the card
  return card;
}
