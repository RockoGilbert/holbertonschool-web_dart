import '1-main.dart';
import 'dart:convert';

Future<String> getUserId() async {
  var userId = await fetchUserData();
  var iduser = jsonDecode(userId);
  return iduser['id'];
}
