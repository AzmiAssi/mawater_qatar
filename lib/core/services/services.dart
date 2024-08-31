import 'package:mawater_qatar/core/services/enums.dart';

String getTime(DateTime timenow) {
  return '${timenow.month}/${timenow.day}/${timenow.year} ${timenow.hour}:${timenow.minute}:${timenow.second.ceil()}';
}

String getFolderName({required String name, required DateTime time}) {
  return "$name ( ${time.year} - ${time.month} )";
}

String getImagePath({required String imageName, required int type}) {
  String path = "";
  switch (type) {
    case ImageType.category:
      {
        path =
            "https://firebasestorage.googleapis.com/v0/b/mawaterqatar-17f8a.appspot.com/o/categories_images%2F$imageName?alt=media&token=f4a000fb-c7d8-4eac-af7d-d1f70f33c19c";
      }
    case ImageType.mawater:
      {
        path =
            "https://firebasestorage.googleapis.com/v0/b/mawaterqatar-17f8a.appspot.com/o/mawater%2F$imageName?alt=media&token=540d13bf-db53-4f93-bd18-f2e35507b63c";
      }
    case ImageType.ads:
      {
        path =
            "https://firebasestorage.googleapis.com/v0/b/mawaterqatar-17f8a.appspot.com/o/ADS%2F$imageName?alt=media&token=a82d6c23-2fc9-4c81-b185-121115401066";
      }
    case ImageType.banner:
      {
        path =
            "https://firebasestorage.googleapis.com/v0/b/mawaterqatar-17f8a.appspot.com/o/banner%2F$imageName?alt=media&token=ce3fdd90-caf2-4a3f-abf4-635f92cc8af6";
      }
  }
  return path;
}
