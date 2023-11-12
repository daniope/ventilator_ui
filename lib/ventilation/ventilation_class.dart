part of ventilation;

class Ventilation {
  final String _libPath;
  final VentilationBindings _vb;

  final ffi.Pointer<VENTILATION_error> _error;

  late final ffi.Pointer<VENTILATION_Lung>       _lung;
  late final ffi.Pointer<VENTILATION_Ventilator> _ventilator;

  late ffi.Pointer<VENTILATION_Packet> _packetCurr;
  late double                          _pressureCurr;

  Ventilation.create(String libPath)
    : _libPath = libPath,
      _vb      = VentilationBindings(
        ffi.DynamicLibrary.open(libPath)
      ),
      _error = calloc()
  {
    ffi.Pointer<VENTILATION_Elastance> elastance = _vb.VENTILATION_elastance_create(
      1000.0/30.0,
      _error
    );
    ffi.Pointer<VENTILATION_Resistance> resistance = _vb.VENTILATION_resistance_create(
      50.0,
      _error
    );
    _lung       = _vb.VENTILATION_lung_create(resistance, elastance, _error);
    assert(_error.value == VENTILATION_ERROR_OK);
    
    ffi.Pointer<VENTILATION_Frequency> frequency = _vb.VENTILATION_frequency_bpm(
      30.0,
      _error
    );
    ffi.Pointer<VENTILATION_Ratio> ratio = _vb.VENTILATION_ratio_create(
      0.5,
      1.0,
      _error
    );
    ffi.Pointer<VENTILATION_Cycle> cycle = _vb.VENTILATION_cycle_create(
      frequency,
      ratio,
      _error
    );
    assert(_error.value == VENTILATION_ERROR_OK);

    ffi.Pointer<VENTILATION_PEEP> peep = _vb.VENTILATION_peep_create(
      5.0,
      _error
    );
    ffi.Pointer<VENTILATION_Pressure_Peak> peak = _vb.VENTILATION_pressure_peak_create(
      20.0,
      _error
    );
    _ventilator = _vb.VENTILATION_ventilator_pcv(
      cycle, 
      peep, 
      peak, 
      _error
    );
    assert(_error.value == VENTILATION_ERROR_OK);
    
    _vb.VENTILATION_pressure_peak_delete(peak, _error);
    _vb.VENTILATION_peep_delete(peep, _error);
    _vb.VENTILATION_cycle_delete(cycle, _error);
    _vb.VENTILATION_ratio_delete(ratio, _error);
    _vb.VENTILATION_frequency_delete(frequency, _error);
    _vb.VENTILATION_resistance_delete(resistance, _error);
    _vb.VENTILATION_elastance_delete(elastance, _error);
    assert(_error.value == VENTILATION_ERROR_OK);
  }

  void update() {
    _packetCurr = _vb.VENTILATION_ventilator_control(
      _ventilator,
      _lung,
      _error
      );
    assert(_error.value == VENTILATION_ERROR_OK);

    ffi.Pointer<VENTILATION_Pressure> pressure = _vb.VENTILATION_packet_pressure(
      _packetCurr,
      _error
    );
    _pressureCurr = _vb.VENTILATION_pressure_value(pressure, _error);
    assert(_error.value == VENTILATION_ERROR_OK);
  }

  double getPressure() {
    return _pressureCurr;
  }

  void delete() {
    _vb.VENTILATION_ventilator_delete(_ventilator, _error);
    _vb.VENTILATION_lung_delete(_lung, _error);
    _vb.VENTILATION_packet_delete(_packetCurr, _error);
    assert(_error.value == VENTILATION_ERROR_OK);
  }
}
