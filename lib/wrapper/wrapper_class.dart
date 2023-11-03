part of wrapper;

class VentilationWrapper {
  final String            libPath;
  late ffi.DynamicLibrary lib;

  late ElastanceCreate   elastanceCreate;
  late ResistanceCreate  resistanceCreate;
  late LungCreate        lungCreate;
  late FrequencyBPM      frequencyBPM;
  late RatioCreate       ratioCreate;
  late CycleCreate       cycleCreate;
  late PeepCreate        peepCreate;
  late PeakCreate        peakCreate;
  late VentilatorPCV     ventilatorPCV;
  late VentilatorControl ventilatorControl;
  late PacketPressure    packetPressure;
  late PressureValue     pressureValue;

  VentilationWrapper(String libPath)
    : this.libPath = libPath
  {
    this.lib = ffi.DynamicLibrary.open(this.libPath);

    this.elastanceCreate = this.lib
      .lookup<ffi.NativeFunction<ElastanceCreateFunc>>('VENTILATION_elastance_create')
      .asFunction();

    this.resistanceCreate = this.lib
      .lookup<ffi.NativeFunction<ResistanceCreateFunc>>('VENTILATION_resistance_create')
      .asFunction();
    
    this.lungCreate = this.lib
      .lookup<ffi.NativeFunction<LungCreateFunc>>('VENTILATION_lung_create')
      .asFunction();
    
    this.frequencyBPM = this.lib
      .lookup<ffi.NativeFunction<FrequencyBPMFunc>>('VENTILATION_frequency_bpm')
      .asFunction();
    
    this.ratioCreate = this.lib
      .lookup<ffi.NativeFunction<RatioCreateFunc>>('VENTILATION_ratio_create')
      .asFunction();
    
    this.cycleCreate = this.lib
      .lookup<ffi.NativeFunction<CycleCreateFunc>>('VENTILATION_cycle_create')
      .asFunction();
    
    this.peepCreate = this.lib
      .lookup<ffi.NativeFunction<PeepCreateFunc>>('VENTILATION_peep_create')
      .asFunction();
    
    this.peakCreate = this.lib
      .lookup<ffi.NativeFunction<PeakCreateFunc>>('VENTILATION_pressure_peak_create')
      .asFunction();
    
    this.ventilatorPCV = this.lib
      .lookup<ffi.NativeFunction<VentilatorPCVFunc>>('VENTILATION_ventilator_pcv')
      .asFunction();
    
    this.ventilatorControl = this.lib
      .lookup<ffi.NativeFunction<VentilatorControlFunc>>('VENTILATION_ventilator_control')
      .asFunction();
    
    this.packetPressure = this.lib
      .lookup<ffi.NativeFunction<PacketPressureFunc>>('VENTILATION_packet_pressure')
      .asFunction();

    this.pressureValue = this.lib
      .lookup<ffi.NativeFunction<PressureValueFunc>>('VENTILATION_pressure_value')
      .asFunction();
  }
}
