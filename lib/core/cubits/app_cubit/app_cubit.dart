import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:the_spy/core/utils/enums.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  List<String>? currentCategoryNames;
  Mode? currentMode;
}
