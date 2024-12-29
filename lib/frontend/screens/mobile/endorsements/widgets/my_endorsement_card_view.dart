import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/controller/endorsements_controller.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/widgets/endorsement_card.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class MyEndorsementCardView extends ConsumerStatefulWidget {
  const MyEndorsementCardView({
    this.enums = MyEndorsementsEnum.values,
    super.key,
    this.scrollDuration = const Duration(seconds: 5),
  });

  final List<MyEndorsementsEnum> enums;
  final Duration scrollDuration;

  @override
  ConsumerState<MyEndorsementCardView> createState() =>
      _MyEndorsementCardViewState();
}

class _MyEndorsementCardViewState extends ConsumerState<MyEndorsementCardView> {
  late final PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: _currentPage,
    );
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(
      widget.scrollDuration,
      (timer) {
        if (_currentPage < widget.enums.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 1500),
          curve: Curves.fastOutSlowIn,
        );
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemCount: widget.enums.length,
            itemBuilder: (context, index) {
              final endorsement = widget.enums.elementAt(index);

              return AnimatedContainer(
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                transform: Matrix4.identity()
                  ..scale(_currentPage == index ? 1.0 : 0.6),

                //!
                child: EndorsementCard(
                  endorsementUserImageURL: "default_endorsement_user",
                  endorsementTitle: endorsement.title,
                  endorsementBody: endorsement.body,
                  endorsementUserNameAndCareerDetails:
                      endorsement.nameAndCareerBriefing,
                ),
              );
            },
          ),
        ),

        16.0.sizedBoxHeight,

        //!
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.enums.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 40,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: _currentPage == index
                    ? appColours.grey700
                    : appColours.grey300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
