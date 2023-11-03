part of ventilation;

class Ventilation {
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

  Ventilation(String libPath)
    : this.libPath = libPath
  {
    this.lib = ffi.DynamicLibrary.open(this.libPath);

    this.elastanceCreate = this.lib
      .lookup<ffi.NativeFunction<ElastanceCreateNative>>('VENTILATION_elastance_create')
      .asFunction();

    this.resistanceCreate = this.lib
      .lookup<ffi.NativeFunction<ResistanceCreateNative>>('VENTILATION_resistance_create')
      .asFunction();
    
    this.lungCreate = this.lib
      .lookup<ffi.NativeFunction<LungCreateNative>>('VENTILATION_lung_create')
      .asFunction();
    
    this.frequencyBPM = this.lib
      .lookup<ffi.NativeFunction<FrequencyBPMNative>>('VENTILATION_frequency_bpm')
      .asFunction();
    
    this.ratioCreate = this.lib
      .lookup<ffi.NativeFunction<RatioCreateNative>>('VENTILATION_ratio_create')
      .asFunction();
    
    this.cycleCreate = this.lib
      .lookup<ffi.NativeFunction<CycleCreateNative>>('VENTILATION_cycle_create')
      .asFunction();
    
    this.peepCreate = this.lib
      .lookup<ffi.NativeFunction<PeepCreateNative>>('VENTILATION_peep_create')
      .asFunction();
    
    this.peakCreate = this.lib
      .lookup<ffi.NativeFunction<PeakCreateNative>>('VENTILATION_pressure_peak_create')
      .asFunction();
    
    this.ventilatorPCV = this.lib
      .lookup<ffi.NativeFunction<VentilatorPCVNative>>('VENTILATION_ventilator_pcv')
      .asFunction();
    
    this.ventilatorControl = this.lib
      .lookup<ffi.NativeFunction<VentilatorControlNative>>('VENTILATION_ventilator_control')
      .asFunction();
    
    this.packetPressure = this.lib
      .lookup<ffi.NativeFunction<PacketPressureNative>>('VENTILATION_packet_pressure')
      .asFunction();

    this.pressureValue = this.lib
      .lookup<ffi.NativeFunction<PressureValueNative>>('VENTILATION_pressure_value')
      .asFunction();
  }
}
