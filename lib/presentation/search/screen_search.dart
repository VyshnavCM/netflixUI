import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';
import '../../controller/debouncer.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});
  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}
class _ScreenSearchState extends State<ScreenSearch> {
  bool changer = false;
  final searchController = TextEditingController();
  final _debonucer = Debouncer(delay: const Duration(milliseconds: 500));
  final ValueNotifier<bool> showSearchResult = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: 50,
                child: CupertinoTextField(
                  controller: searchController,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 48, 47, 47).withOpacity(0.4),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                    ),
                  ),
                  placeholder: 'Search shows, movies...',
                  placeholderStyle:
                      const TextStyle(color: kGreyColor, fontSize: 16),
                  suffix: ValueListenableBuilder<bool>(
                    valueListenable: showSearchResult,
                    builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          searchController.clear();
                          setState(() {
                            showSearchResult.value = false;
                            changer = false;
                          });
                        },
                        child: child,
                      );
                    },
                    child: ValueListenableBuilder(
                      valueListenable: showSearchResult,
                      builder: (context, value, _) {
                        return Visibility(
                          visible: value,
                          child: const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              CupertinoIcons.xmark_circle_fill,
                              color: Colors.grey,
                              size: 17,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  onChanged: (value) async {
                    _debonucer.call(() {
                      setState(() {
                        changer = true;
                        showSearchResult.value = true;
                        if (searchController.text.isEmpty) {
                          changer = false;
                          showSearchResult.value = false;
                        }
                      });
                    });
                  },
                ),
              ),
            ),
             Expanded(child: changer
                  ? SearchResultWidget(
                      result: searchController.text,
                    )
                  : const SearchIdleWidget(),)
          ],
        ),
      ),
    ));
  }
}
