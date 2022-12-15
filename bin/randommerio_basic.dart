import 'package:randommerio_basic/randommerio_basic.dart' as randommerio_basic;
import 'package:http/http.dart' as http;
import 'package:randommerio_basic/getCard.dart';

void main() async {
  // Create a URL to the Randommer.io API
  print(await getCard());
}
