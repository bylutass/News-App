import 'package:velocity_x/velocity_x.dart';

import '../res/consts/consts.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "News for example".allWordsCapitilize(),
                      style: AppStyles.regular(
                        size: 12,
                      ),
                    ),
                    10.heightBox,
                    VxBox(
                            child: Text(
                      "Economy",
                      style: AppStyles.regular(
                        color: AppColors.white,
                        size: 12,
                      ),
                    ))
                        .color(AppColors.icon)
                        .padding(const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 6))
                        .roundedSM
                        .make(),
                  ],
                ),
              ),
              10.widthBox,
              Expanded(
                child: VxBox().black.size(80, 80).roundedSM.make(),
              ),
            ],
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 14,
                    color: AppColors.secondaryText,
                  ),
                  5.widthBox,
                  Text(
                    "16 May, 24",
                    style: AppStyles.regular(
                      color: AppColors.secondaryText,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: AppColors.white,
                    size: 14,
                  ),
                  4.widthBox,
                  Text(
                    "233",
                    style: AppStyles.regular(
                      color: AppColors.white,
                      size: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
