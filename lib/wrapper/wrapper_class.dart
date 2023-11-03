part of wrapper;

class VentilationWrapper {
  final String            lib_path;
  late ffi.DynamicLibrary lib;

  late ElastanceCreate   elastance_create;
  late ResistanceCreate  resistance_create;
  late LungCreate        lung_create;
  late FrequencyBPM      frequency_bpm;
  late RatioCreate       ratio_create;
  late CycleCreate       cycle_create;
  late PeepCreate        peep_create;
  late PeakCreate        peak_create;
  late VentilatorPCV     ventilator_pcv;
  late VentilatorControl ventilator_control;
  late PacketPressure    packet_pressure;
  late PressureValue     pressure_value;

  VentilationWrapper(String lib_path)
    : this.lib_path = lib_path
  {
    this.lib = ffi.DynamicLibrary.open(this.lib_path);

    this.elastance_create = this.lib
      .lookup<ffi.NativeFunction<ElastanceCreateFunc>>('VENTILATION_elastance_create')
      .asFunction();

    this.resistance_create = this.lib
      .lookup<ffi.NativeFunction<ResistanceCreateFunc>>('VENTILATION_resistance_create')
      .asFunction();
    
    this.lung_create = this.lib
      .lookup<ffi.NativeFunction<LungCreateFunc>>('VENTILATION_lung_create')
      .asFunction();
    
    this.frequency_bpm = this.lib
      .lookup<ffi.NativeFunction<FrequencyBPMFunc>>('VENTILATION_frequency_bpm')
      .asFunction();
    
    this.ratio_create = this.lib
      .lookup<ffi.NativeFunction<RatioCreateFunc>>('VENTILATION_ratio_create')
      .asFunction();
    
    this.cycle_create = this.lib
      .lookup<ffi.NativeFunction<CycleCreateFunc>>('VENTILATION_cycle_create')
      .asFunction();
    
    this.peep_create = this.lib
      .lookup<ffi.NativeFunction<PeepCreateFunc>>('VENTILATION_peep_create')
      .asFunction();
    
    this.peak_create = this.lib
      .lookup<ffi.NativeFunction<PeakCreateFunc>>('VENTILATION_pressure_peak_create')
      .asFunction();
    
    this.ventilator_pcv = this.lib
      .lookup<ffi.NativeFunction<VentilatorPCVFunc>>('VENTILATION_ventilator_pcv')
      .asFunction();
    
    this.ventilator_control = this.lib
      .lookup<ffi.NativeFunction<VentilatorControlFunc>>('VENTILATION_ventilator_control')
      .asFunction();
    
    this.packet_pressure = this.lib
      .lookup<ffi.NativeFunction<PacketPressureFunc>>('VENTILATION_packet_pressure')
      .asFunction();

    this.pressure_value = this.lib
      .lookup<ffi.NativeFunction<PressureValueFunc>>('VENTILATION_pressure_value')
      .asFunction();
  }
}
