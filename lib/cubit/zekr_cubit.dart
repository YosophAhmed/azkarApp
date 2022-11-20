import 'package:azkar/cubit/zekr_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekrCubit extends Cubit<ZekrState> {
  ZekrCubit() : super(ZekrInitialState());

  int counter = 0;
  var controller = PageController();



  void zekrIncrement({required int contentCounter}) {
    if (counter == contentCounter) {
      controller.nextPage(
        duration: const Duration(
          milliseconds: 100,
        ),
        curve: Curves.fastOutSlowIn,
      );
      emit(
        ZekrFinishState(),
      );
      counter = 0;
    } else {
      counter++;
      emit(
        ZekrIncrementState(),
      );
    }
  }


}
