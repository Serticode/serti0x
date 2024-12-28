import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/desktop/welcome_page/widgets/app_dash.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/theme_state_and_provider.dart';
import 'package:serti0x/frontend/utilities/app_extensions.dart';

class BlogPage extends ConsumerWidget {
  const BlogPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeBrightness = ref.watch(themeNotifierProvider).brightness;
    const appColoursInstance = AppColours.instance;
    const appStringsInstance = AppStrings.instance;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appStringsInstance.articles
            .txt(
              context: context,
              fontWeight: FontWeight.w800,
              fontSize: 72,
              color: themeBrightness == Brightness.dark
                  ? appColoursInstance.peach
                  : appColoursInstance.blue,
            )
            .fadeInFromBottom(),

        //!
        22.0.sizedBoxHeight,

        //!
        Row(
          children: [
            const AppDash(),

            21.0.sizedBoxWidth,

            //!
            appStrings.articlesRider
                .txt(
                  context: context,
                  fontSize: 18,
                )
                .fadeInFromBottom(
                  animationDuration: const Duration(
                    milliseconds: 400,
                  ),
                ),
          ],
        ),

        50.0.sizedBoxHeight,

        //! ARTICLES
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: themeBrightness == Brightness.dark
                      ? appColoursInstance.peach
                      : appColoursInstance.blue,
                  width: 0.5,
                ),
                right: BorderSide(
                  color: themeBrightness == Brightness.dark
                      ? appColoursInstance.peach
                      : appColoursInstance.blue,
                  width: 0.5,
                ),
              ),
            ),

            //!
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
              ),
              child: GridView.builder(
                itemCount: 12,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: index.isEven
                        ? appColoursInstance.peach.withOpacity(0.1)
                        : appColoursInstance.blue.withOpacity(0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        "${index + 1}"
                            .txt(
                              context: context,
                              fontWeight: FontWeight.w800,
                              fontSize: 72,
                              height: 0.5,
                              color: themeBrightness == Brightness.dark
                                  ? appColoursInstance.grey200.withOpacity(
                                      0.2,
                                    )
                                  : appColoursInstance.grey900.withOpacity(
                                      0.2,
                                    ),
                            )
                            .align(
                              widgetAlignment: Alignment.bottomRight,
                            ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    ).generalPadding;
  }
}
