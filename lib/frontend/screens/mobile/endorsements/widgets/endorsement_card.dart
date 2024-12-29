import 'package:flutter/material.dart';
import 'package:serti0x/frontend/screens/mobile/endorsements/widgets/endorsement_user_image.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class EndorsementCard extends StatelessWidget {
  const EndorsementCard({
    required this.endorsementUserImageURL,
    required this.endorsementTitle,
    required this.endorsementBody,
    required this.endorsementUserNameAndCareerDetails,
    super.key,
  });

  final String endorsementUserImageURL;
  final String endorsementTitle;
  final String endorsementBody;
  final String endorsementUserNameAndCareerDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,

      //!
      child: Column(
        children: [
          EndorsementUserImage(
            endorsementUserImageURL: endorsementUserImageURL,
          ),

          32.0.sizedBoxHeight,

          //!
          endorsementTitle.txt12(
            context: context,
            color: appColours.grey600,
          ),

          32.0.sizedBoxHeight,

          //!
          endorsementBody.txt14(
            context: context,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),

          32.0.sizedBoxHeight,

          //!
          endorsementUserNameAndCareerDetails.txt12(
            context: context,
            textAlign: TextAlign.center,
            color: appColours.grey600,
          ),
        ],
      ),
    );
  }
}
