part of ventilation;

typedef ElastanceCreateNative = ffi.Pointer Function(
  ffi.Float elastance,
  ffi.Pointer<ffi.Int32> error
  );
typedef ElastanceCreate = ffi.Pointer Function(
  double elastance,
  ffi.Pointer<ffi.Int32> error
  );

typedef ResistanceCreateNative = ffi.Pointer Function(
  ffi.Float elastance,
  ffi.Pointer<ffi.Int32> error
  );
typedef ResistanceCreate = ffi.Pointer Function(
  double elastance,
  ffi.Pointer<ffi.Int32> error
  );

typedef LungCreateNative = ffi.Pointer Function(
  ffi.Pointer elastance,
  ffi.Pointer resistance,
  ffi.Pointer<ffi.Int32> error
  );
typedef LungCreate = ffi.Pointer Function(
  ffi.Pointer elastance,
  ffi.Pointer resistance,
  ffi.Pointer<ffi.Int32> error
  );

typedef FrequencyBPMNative = ffi.Pointer Function(
  ffi.Float frequency,
  ffi.Pointer<ffi.Int32> error
  );
typedef FrequencyBPM = ffi.Pointer Function(
  double frequency,
  ffi.Pointer<ffi.Int32> error
  );

typedef RatioCreateNative = ffi.Pointer Function(
  ffi.Float inspiration,
  ffi.Float expiration,
  ffi.Pointer<ffi.Int32> error
  );
typedef RatioCreate = ffi.Pointer Function(
  double inspiration,
  double expiration,
  ffi.Pointer<ffi.Int32> error
  );

typedef CycleCreateNative = ffi.Pointer Function(
  ffi.Pointer frequency,
  ffi.Pointer ratio,
  ffi.Pointer<ffi.Int32> error
  );
typedef CycleCreate = ffi.Pointer Function(
  ffi.Pointer frequency,
  ffi.Pointer ratio,
  ffi.Pointer<ffi.Int32> error
  );

typedef PeepCreateNative = ffi.Pointer Function(
  ffi.Float peep,
  ffi.Pointer<ffi.Int32> error
  );
typedef PeepCreate = ffi.Pointer Function(
  double peep,
  ffi.Pointer<ffi.Int32> error
  );

typedef PeakCreateNative = ffi.Pointer Function(
  ffi.Float peak,
  ffi.Pointer<ffi.Int32> error
  );
typedef PeakCreate = ffi.Pointer Function(
  double peak,
  ffi.Pointer<ffi.Int32> error
  );

typedef VentilatorPCVNative = ffi.Pointer Function(
  ffi.Pointer cycle,
  ffi.Pointer peep,
  ffi.Pointer peak,
  ffi.Pointer<ffi.Int32> error
  );
typedef VentilatorPCV = ffi.Pointer Function(
  ffi.Pointer cycle,
  ffi.Pointer peep,
  ffi.Pointer peak,
  ffi.Pointer<ffi.Int32> error
  );

typedef VentilatorControlNative = ffi.Pointer Function(
  ffi.Pointer ventilator,
  ffi.Pointer lung,
  ffi.Pointer<ffi.Int32> error
  );
typedef VentilatorControl = ffi.Pointer Function(
  ffi.Pointer ventilator,
  ffi.Pointer lung,
  ffi.Pointer<ffi.Int32> error
  );

typedef PacketPressureNative = ffi.Pointer Function(
  ffi.Pointer packet,
  ffi.Pointer<ffi.Int32> error
  );
typedef PacketPressure = ffi.Pointer Function(
  ffi.Pointer packet,
  ffi.Pointer<ffi.Int32> error
  );

typedef PressureValueNative = ffi.Float Function(
  ffi.Pointer pressure,
  ffi.Pointer<ffi.Int32> error
  );
typedef PressureValue = double Function(
  ffi.Pointer pressure,
  ffi.Pointer<ffi.Int32> error
  );
