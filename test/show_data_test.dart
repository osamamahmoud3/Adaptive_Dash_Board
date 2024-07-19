import 'package:adaptive_dash_board/models/repos/app_repo.dart';
import 'package:adaptive_dash_board/utils/controllers/show_data_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetAppData extends Mock implements AppRepo {
  @override
  void main() {
    late ShowItems sut;
    late MockGetAppData mockGetAppData;
    setUp(() {
      mockGetAppData = MockGetAppData();
      sut = ShowItems(mockGetAppData);
    });
    test("Chack that function return true Values", () => null);
  }
}
