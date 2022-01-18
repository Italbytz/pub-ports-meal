enum Additives {
  none,
  foodcoloring,
  preservatives,
  antioxidants,
  flavorenhancer,
  phosphate,
  sulphureted,
  waxed,
  blackend,
  sweetener,
  phenylalanine,
  taurine,
  nitritepicklingsalt,
  caffeinated,
  quinine,
  milkprotein,
  all
}

extension AdditivesExtension on Additives {
  //a map containing all the values for the enum fields
  static final Map<Additives, int> _valueMap = {
    Additives.none: 0,
    Additives.foodcoloring: 0x01 << 0,
    Additives.preservatives: 0x01 << 1,
    Additives.antioxidants: 0x01 << 2,
    Additives.flavorenhancer: 0x01 << 3,
    Additives.phosphate: 0x01 << 4,
    Additives.sulphureted: 0x01 << 5,
    Additives.waxed: 0x01 << 6,
    Additives.blackend: 0x01 << 7,
    Additives.sweetener: 0x01 << 8,
    Additives.phenylalanine: 0x01 << 9,
    Additives.taurine: 0x01 << 10,
    Additives.nitritepicklingsalt: 0x01 << 11,
    Additives.caffeinated: 0x01 << 12,
    Additives.quinine: 0x01 << 13,
    Additives.milkprotein: 0x01 << 14,
    Additives.all: 0xFFFF
  };
  //internal reverse map to resolve the enum from the value. Will be populated on demand
  static Map<int, Additives>? __reverseValueMap;
  //gets the reverse map and populates it when it is not yet built
  static Map<int, Additives> get _reverseValueMap {
    __reverseValueMap ??= {
      for (var entry in _valueMap.entries) entry.value: entry.key
    };
    return __reverseValueMap!;
  }

  //gets the Additives instance for the given value or [null] when there is none
  static Additives? fromValue(int value) =>
      AdditivesExtension._reverseValueMap[value];

  //returns the value for this Additives
  int get value => _valueMap[this]!;

  //checks if this Additives is set in the given bit field
  bool isSetIn(int bitfield) => (bitfield & value) != 0;

  //sets the bit(s) that match(es) [this] in the given bitfield and returns the result
  int setIn(int bitField) => bitField | value;

  //erases the bit(s) that match(es) [this] in the given bitfield and returns the result
  int eraseIn(int bitfield) => bitfield & ~value;
}
