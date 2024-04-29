import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class CubocommerceAuthUser {
  CubocommerceAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  DadosUserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<CubocommerceAuthUser> cubocommerceAuthUserSubject =
    BehaviorSubject.seeded(CubocommerceAuthUser(loggedIn: false));
Stream<CubocommerceAuthUser> cubocommerceAuthUserStream() =>
    cubocommerceAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
