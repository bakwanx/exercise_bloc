import 'dart:async';

class CounterBloc{

  int _counterValue = 0;
  int get initialValue => _counterValue;
  StreamController _inputController = StreamController();
  StreamController _outputController = StreamController();

  StreamSink get sinkInput => _inputController.sink;
  StreamSink get _sinkOutput => _outputController.sink;

  Stream get outputValue => _outputController.stream;

  CounterBloc(){
    _inputController.stream.listen((event) {
      if(event == "increase"){
        _counterValue++;
      }else{
        _counterValue--;
      }
      _sinkOutput.add(_counterValue);
    });
  }

  void dispose(){
    _inputController.close();
    _outputController.close();
  }
}