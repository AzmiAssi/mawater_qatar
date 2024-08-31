// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:story_view/story_view.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "Welcome To Mawater Qatar",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Nice!\n\nTap to continue.",
            backgroundColor: ColorConstant.gray500,
            textStyle: const TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/q6Uip37e4soEYbAijKvu.jpg",
            caption: const Text(
              "Still sampling",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
              url:
                  "https://mawatar.com/m/public/storage/stroies/February2022/PqcRWWj6aMLaI5KVC8WP.jpg",
              caption: const Text(
                "Working with gifs",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              controller: storyController),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/2GTlSdi1WHiffmFeVrbk.jpg",
            caption: const Text(
              "Hello, from the other side",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/vWEDIWBSwh3mOyOFjb3k.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),

//new ads
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/xEdZNX8jTzIjWm19mjmP.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/6AdGLJ2UfxrLh0NyRWMS.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/AnMVysuJty8hRUl4DTcG.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/bsGgyaRf8VE3RDYmmu5A.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/January2022/gq2ZBMcq9XNUHyc6Ao6D.png",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/cQZcrKAu1gNOXcWOWPZf.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://mawatar.com/m/public/storage/stroies/February2022/EXp0N4UWVBPAqUGWbY1C.jpg",
            caption: const Text(
              "Hello, from the other side2",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            controller: storyController,
          ),
        ],
        onStoryShow: (storyItem, index) {
          print("Showing a story");
        },
        onComplete: () {
          Navigator.pop(context);
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}
