import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/controller/endorsements_controller.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/widgets/endorsement_card.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';

class MyEndorsementCardView extends StatelessWidget {
  const MyEndorsementCardView({
    this.enums = MyEndorsementsEnum.values,
    super.key,
  });

  final List<MyEndorsementsEnum> enums;
  static final _currentPage = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: enums.length,
          disableGesture: true,
          options: CarouselOptions(
            aspectRatio: 4 / 5,
            autoPlay: true,
            enlargeCenterPage: true,
            scrollPhysics: const NeverScrollableScrollPhysics(),
            autoPlayAnimationDuration: const Duration(milliseconds: 1200),
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) => _currentPage.value = index,
          ),
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            final endorsement = enums.elementAt(itemIndex);

            return EndorsementCard(
              endorsementUserImageURL: "default_endorsement_user",
              endorsementTitle: endorsement.title,
              endorsementBody: endorsement.body,
              endorsementUserNameAndCareerDetails:
                  endorsement.nameAndCareerBriefing,
            );
          },
        ),

        //!
        ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (context, value, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              enums.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color:
                      value == index ? appColours.peach : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
