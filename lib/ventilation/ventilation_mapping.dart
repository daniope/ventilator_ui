part of ventilation;

typedef ElastanceCreateFunc = ffi.Pointer Function(
  ffi.Float elastance,
  ffi.Pointer<ffi.Int32> error
  );
typedef ElastanceCreate = ffi.Pointer Function(
  double elastance,
  ffi.Pointer<ffi.Int32> error
  );

typedef ResistanceCreateFunc = ffi.Pointer Function(
  ffi.Float elastance,
  ffi.Pointer<ffi.Int32> error
  );
typedef ResistanceCreate = ffi.Pointer Function(
  double elastance,
  ffi.Pointer<ffi.Int32> error
  );

typedef LungCreateFunc = ffi.Pointer Function(
  ffi.Pointer elastance,
  ffi.Pointer resistance,
  ffi.Pointer<ffi.Int32> error
  );
typedef LungCreate = ffi.Pointer Function(
  ffi.Pointer elastance,
  ffi.Pointer resistance,
  ffi.Pointer<ffi.Int32> error
  );

typedef FrequencyBPMFunc = ffi.Pointer Function(
  ffi.Float frequency,
  ffi.Pointer<ffi.Int32> error
  );
typedef FrequencyBPM = ffi.Pointer Function(
  double frequency,
  ffi.Pointer<ffi.Int32> error
  );

typedef RatioCreateFunc = ffi.Pointer Function(
  ffi.Float inspiration,
  ffi.Float expiration,
  ffi.Pointer<ffi.Int32> error
  );
typedef RatioCreate = ffi.Pointer Function(
  double inspiration,
  double expiration,
  ffi.Pointer<ffi.Int32> error
  );

typedef CycleCreateFunc = ffi.Pointer Function(
  ffi.Pointer frequency,
  ffi.Pointer ratio,
  ffi.Pointer<ffi.Int32> error
  );
typedef CycleCreate = ffi.Pointer Function(
  ffi.Pointer frequency,
  ffi.Pointer ratio,
  ffi.Pointer<ffi.Int32> error
  );

typedef PeepCreateFunc = ffi.Pointer Function(
  ffi.Float peep,
  ffi.Pointer<ffi.Int32> error
  );
typedef PeepCreate = ffi.Pointer Function(
  double peep,
  ffi.Pointer<ffi.Int32> error
  );

typedef PeakCreateFunc = ffi.Pointer Function(
  ffi.Float peak,
  ffi.Pointer<ffi.Int32> error
  );
typedef PeakCreate = ffi.Pointer Function(
  double peak,
  ffi.Pointer<ffi.Int32> error
  );

typedef VentilatorPCVFunc = ffi.Pointer Function(
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

typedef VentilatorControlFunc = ffi.Pointer Function(
  ffi.Pointer ventilator,
  ffi.Pointer lung,
  ffi.Pointer<ffi.Int32> error
  );
typedef VentilatorControl = ffi.Pointer Function(
  ffi.Pointer ventilator,
  ffi.Pointer lung,
  ffi.Pointer<ffi.Int32> error
  );

typedef PacketPressureFunc = ffi.Pointer Function(
  ffi.Pointer packet,
  ffi.Pointer<ffi.Int32> error
  );
typedef PacketPressure = ffi.Pointer Function(
  ffi.Pointer packet,
  ffi.Pointer<ffi.Int32> error
  );

typedef PressureValueFunc = ffi.Float Function(
  ffi.Pointer pressure,
  ffi.Pointer<ffi.Int32> error
  );
typedef PressureValue = double Function(
  ffi.Pointer pressure,
  ffi.Pointer<ffi.Int32> error
  );
