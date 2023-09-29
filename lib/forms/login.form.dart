import 'package:reactive_forms/reactive_forms.dart';

final loginForm = FormGroup({
  "email": FormControl(validators: [
    Validators.required,
    Validators.email,
  ]),
  "password": FormControl(validators: [
    Validators.required,
    Validators.minLength(6),
  ])
});
