import 'package:flutter/cupertino.dart';
import 'package:image_viewer/features/features.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  AuthRepository,
  AuthRemoteDatasource,
  ImageViewerRepository,
  ImageViewerRemoteDatasource,
])
@GenerateNiceMocks([MockSpec<BuildContext>()])
void main() {}
