import 'package:artconnect/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    return AuthState(isLoding: false);
  }

  void login({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoding: true);
    var dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    try {
      var response = await dio.post(
        "https://api.artseb.studio/api/login",
        data: {
          "email": email,
          "password": password,
        },
      );
      UserState current = UserState.fromJson(response.data);
      state = state.copyWith(isLoding: false, data: current, error: null);
    } on DioException catch (error) {
      if (error.response != null) {
        state = state.copyWith(
          isLoding: false,
          error: UserError.fromJson(error.response!.data),
        );
      } else {
        state = state.copyWith(
          isLoding: false,
          data: null,
          error: UserError(message: "chek ur connection"),
        );
      }
    }
  }
}
