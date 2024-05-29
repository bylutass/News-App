import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String? image;
  const CategoryItem({super.key, required this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Vx.randomPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.bottomLeft,
      child: Text(
        title.allWordsCapitilize(),
        style: AppStyles.semiBold(color: AppColors.white),
      ),
    );
  }
}
