import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int currentNavBarIndex = 1;
  int? currentCategoryIndex;

  void homeNavigation(int index) {
    if (currentNavBarIndex != index) {
      currentNavBarIndex = index;
      emit(NavTapChange());
    }
  }

  void changeCategoryIndex(int categoryIndex) {
    if (currentCategoryIndex != categoryIndex) {
      currentCategoryIndex = categoryIndex;
      emit(CategoryChange());
    }
  }
}
