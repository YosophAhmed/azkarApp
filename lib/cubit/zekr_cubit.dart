import 'package:azkar/cubit/zekr_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekrCubit extends Cubit<ZekrState> {
  ZekrCubit() : super(ZekrInitialState());

  int counter = 0;
  int listCounter = 0;
  var controller = PageController();

  void returnState() {
    counter = 0;
    listCounter = 0;
    controller.initialPage;
    emit(
      ZekrReturnState(),
    );
  }

  void zekrIncrement({
    required int contentCounter,
  }) {
    if (counter == contentCounter - 1) {
      controller.nextPage(
        duration: const Duration(
          milliseconds: 100,
        ),
        curve: Curves.fastOutSlowIn,
      );
      counter = 0;
      emit(
        ZekrFinishState(),
      );
    } else {
      counter++;
      emit(
        ZekrIncrementState(),
      );
    }
  }

  void swipe({
    required int index,
    required int lastIndex,
  }) {
    listCounter = index;
    counter = 0;
    if (index == 0) {
      emit(
        ZekrFirstBottomState(),
      );
    } else if (listCounter == lastIndex - 1) {
      emit(ZekrLastBottomState());
    } else {
      emit(
        ZekrSwipeState(),
      );
    }
  }
}
