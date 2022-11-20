import 'package:azkar/cubit/zekr_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekrCubit extends Cubit<ZekrState> {
  ZekrCubit() : super(ZekrInitialState());

  int counter = 0;

  int zekrIncrement() {
    counter++;
    emit(
      ZekrIncrementState(),
    );
    return counter;
  }

}
