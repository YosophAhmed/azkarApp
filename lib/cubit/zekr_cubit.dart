import 'package:azkar/cubit/zekr_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZekrCubit extends Cubit<ZekrState> {
  ZekrCubit() : super(ZekrInitialState());

  var counter = 0;

  void increment() {

  }
}