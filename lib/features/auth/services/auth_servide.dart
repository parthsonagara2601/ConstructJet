import 'package:constructjet/constants/Global_Variables.dart';
import 'package:constructjet/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //Sign Up the user
  void signUpUser({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        password: password,
        email: email,
        address: '',
        type: '',
        token: '',
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-type': 'application/json; charset=UTF-8',
        },
      );
      // print(res.statusCode);
    } catch (e) {}
  }
}
