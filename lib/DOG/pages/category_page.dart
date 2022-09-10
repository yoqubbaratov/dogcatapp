import 'package:flutter/material.dart';

import '../views/favorite_view.dart';
import '../views/vote_view.dart';


class CategoryPage extends StatefulWidget {
  final int crossAxisCount;
  const CategoryPage({Key? key, this.crossAxisCount = 2}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  int selectedScreen = 0;
  final PageController _pageController = PageController(keepPage: true);

  void _onPressedScreen(int screen) {
    selectedScreen = screen;
    _pageController.jumpToPage(screen);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // #favorite
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: selectedScreen == 0 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
              ),
              onPressed: () => _onPressedScreen(0),
              child: Text("Sevimli", style: TextStyle(color: selectedScreen == 0
                  ? Colors.white
                  : Colors.black, fontSize: 16),),
            ),
            const SizedBox(width: 10,),

            // #vote
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: selectedScreen == 1 ? Colors.black : Colors.white,
                  elevation: 0,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
              ),
              onPressed: () => _onPressedScreen(1),
              child: Text("  Ovoz berilgan  ", style: TextStyle(color: selectedScreen == 1
                  ? Colors.white
                  : Colors.black, fontSize: 16),),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          selectedScreen = page;
          setState(() {});
        },
        children:  [
          FavoriteView(crossAxisCount: widget.crossAxisCount,),
          VoteView(crossAxisCount: widget.crossAxisCount,),
        ],
      ),
    );
  }
}