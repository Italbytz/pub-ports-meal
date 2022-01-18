enum Allergens {
  none,
  gluten,
  shellfish,
  eggs,
  fish,
  peanuts,
  soy,
  milk,
  nuts,
  celery,
  mustard,
  sesame,
  sulfur,
  lupine,
  mollusk,
  all
}

extension AllergensExtension on Allergens {
  //a map containing all the values for the enum fields
  static final Map<Allergens, int> _valueMap = {
    Allergens.none: 0,
    Allergens.gluten: 0x01 << 0,
    Allergens.shellfish: 0x01 << 1,
    Allergens.eggs: 0x01 << 2,
    Allergens.fish: 0x01 << 3,
    Allergens.peanuts: 0x01 << 4,
    Allergens.soy: 0x01 << 5,
    Allergens.milk: 0x01 << 6,
    Allergens.nuts: 0x01 << 7,
    Allergens.celery: 0x01 << 8,
    Allergens.mustard: 0x01 << 9,
    Allergens.sesame: 0x01 << 10,
    Allergens.sulfur: 0x01 << 11,
    Allergens.lupine: 0x01 << 12,
    Allergens.mollusk: 0x01 << 13,
    Allergens.all: 0xFFFF
  };
  //internal reverse map to resolve the enum from the value. Will be populated on demand
  static Map<int, Allergens>? __reverseValueMap;
  //gets the reverse map and populates it when it is not yet built
  static Map<int, Allergens> get _reverseValueMap {
    __reverseValueMap ??= {
      for (var entry in _valueMap.entries) entry.value: entry.key
    };
    return __reverseValueMap!;
  }

  //gets the Allergens instance for the given value or [null] when there is none
  static Allergens? fromValue(int value) =>
      AllergensExtension._reverseValueMap[value];

  //returns the value for this Allergens
  int get value => _valueMap[this]!;

  //checks if this Allergens is set in the given bit field
  bool isSetIn(int bitfield) => (bitfield & value) != 0;

  //sets the bit(s) that match(es) [this] in the given bitfield and returns the result
  int setIn(int bitField) => bitField | value;

  //erases the bit(s) that match(es) [this] in the given bitfield and returns the result
  int eraseIn(int bitfield) => bitfield & ~value;
}
