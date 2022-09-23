import 'package:dating_app/features/user/models/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDetailFutureProvider = FutureProvider.autoDispose((ref) async {
  return const User(
    nickName: 'マイ',
    birthday: '1998/11/18',
    mainImage:
        'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FmainImage.png?alt=media&token=f9ee499d-3679-489c-920c-5af485561b21',
    subImage1:
        'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FsubImage1.png?alt=media&token=2eec181a-8e38-43fb-a253-9c47b0e44f8c',
    subImage2:
        'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FsubImage2.png?alt=media&token=cf9bfd62-d380-41da-9ee2-d96a19e9b5c9',
    subImage3:
        'https://firebasestorage.googleapis.com/v0/b/dating-app-develop.appspot.com/o/user%2Fhx73NgTwHWRYZ1gt2FBbkKLg6zR2%2Fprofile_images%2FsubImage3.png?alt=media&token=07677443-4a35-4b5f-b6fe-f6644c1ae50a',
  );
});
