import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class PhotosStateNotifier extends StateNotifier<PhotosState> {
  PhotosStateNotifier(this._read) : super(PhotosState());

  final Reader _read;
  final ImagePicker _picker = ImagePicker();

  Future<void> setPhoto({
    required int index,
    required ImageSource source,
  }) async {
    // 画像を取得
    final image = await _picker.pickImage(source: source);

    // Firebase Storageに画像を保存

    // Firestoreに画像URLを保存
  }
}

class PhotosState {
  PhotosState({
    this.photos,
  });

  final List<String>? photos;
}
