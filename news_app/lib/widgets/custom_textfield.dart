import 'package:news_app/res/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String label;
  final bool? isPassword;

  const CustomTextField(
      {super.key,
      required this.hint,
      required this.label,
      this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var showPassword = false;

  makePasswordVisible() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword! && !showPassword,
      decoration: InputDecoration(
          suffixIcon: widget.isPassword == false
              ? null
              : Icon(showPassword == true ? Icons.lock_open : Icons.lock)
                  .onTap(() {
                  makePasswordVisible();
                }),
          hintText: widget.hint,
          hintStyle: AppStyles.regular(),
          labelText: widget.label,
          labelStyle: AppStyles.semiBold()),
    );
  }
}
