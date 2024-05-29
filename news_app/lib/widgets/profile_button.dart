//import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class ProfileButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;

  final Function()? ontap;
  final bool isSwitch;

  const ProfileButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    this.ontap,
    this.isSwitch = false,
  });

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  var switchValue = false;

  changeSwitchValue(value) {
    setState(() {
      switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.ontap,
      leading: VxBox(child: Icon(widget.icon, color: AppColors.white))
          .color(widget.color)
          .p4
          .roundedSM
          .make(),
      title: Text(
        widget.title,
        style: AppStyles.regular(),
      ),
      trailing: widget.isSwitch == false
          ? const Icon(
              Icons.arrow_forward_ios,
              size: 14,
            )
          : Switch(
              activeColor: AppColors.primaryButton,
              value: switchValue,
              onChanged: (value) {
                changeSwitchValue(value);
              }),
    );
  }
}
