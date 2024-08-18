// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_item.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const WeatherItemSchema = Schema(
  name: r'WeatherItem',
  id: -2625234543791434234,
  properties: {
    r'cloudBase': PropertySchema(
      id: 0,
      name: r'cloudBase',
      type: IsarType.double,
    ),
    r'cloudCeiling': PropertySchema(
      id: 1,
      name: r'cloudCeiling',
      type: IsarType.double,
    ),
    r'cloudCover': PropertySchema(
      id: 2,
      name: r'cloudCover',
      type: IsarType.double,
    ),
    r'dewPoint': PropertySchema(
      id: 3,
      name: r'dewPoint',
      type: IsarType.double,
    ),
    r'evapotranspiration': PropertySchema(
      id: 4,
      name: r'evapotranspiration',
      type: IsarType.double,
    ),
    r'freezingRainIntensity': PropertySchema(
      id: 5,
      name: r'freezingRainIntensity',
      type: IsarType.double,
    ),
    r'humidity': PropertySchema(
      id: 6,
      name: r'humidity',
      type: IsarType.double,
    ),
    r'iceAccumulation': PropertySchema(
      id: 7,
      name: r'iceAccumulation',
      type: IsarType.double,
    ),
    r'iceAccumulationLwe': PropertySchema(
      id: 8,
      name: r'iceAccumulationLwe',
      type: IsarType.double,
    ),
    r'precipitationProbability': PropertySchema(
      id: 9,
      name: r'precipitationProbability',
      type: IsarType.double,
    ),
    r'pressureSurfaceLevel': PropertySchema(
      id: 10,
      name: r'pressureSurfaceLevel',
      type: IsarType.double,
    ),
    r'rainAccumulation': PropertySchema(
      id: 11,
      name: r'rainAccumulation',
      type: IsarType.double,
    ),
    r'rainAccumulationLwe': PropertySchema(
      id: 12,
      name: r'rainAccumulationLwe',
      type: IsarType.double,
    ),
    r'rainIntensity': PropertySchema(
      id: 13,
      name: r'rainIntensity',
      type: IsarType.double,
    ),
    r'sleetAccumulation': PropertySchema(
      id: 14,
      name: r'sleetAccumulation',
      type: IsarType.double,
    ),
    r'sleetAccumulationLwe': PropertySchema(
      id: 15,
      name: r'sleetAccumulationLwe',
      type: IsarType.double,
    ),
    r'sleetIntensity': PropertySchema(
      id: 16,
      name: r'sleetIntensity',
      type: IsarType.double,
    ),
    r'snowAccumulation': PropertySchema(
      id: 17,
      name: r'snowAccumulation',
      type: IsarType.double,
    ),
    r'snowAccumulationLwe': PropertySchema(
      id: 18,
      name: r'snowAccumulationLwe',
      type: IsarType.double,
    ),
    r'snowIntensity': PropertySchema(
      id: 19,
      name: r'snowIntensity',
      type: IsarType.double,
    ),
    r'temperature': PropertySchema(
      id: 20,
      name: r'temperature',
      type: IsarType.double,
    ),
    r'temperatureApparent': PropertySchema(
      id: 21,
      name: r'temperatureApparent',
      type: IsarType.double,
    ),
    r'time': PropertySchema(
      id: 22,
      name: r'time',
      type: IsarType.string,
    ),
    r'uvHealthConcern': PropertySchema(
      id: 23,
      name: r'uvHealthConcern',
      type: IsarType.double,
    ),
    r'uvIndex': PropertySchema(
      id: 24,
      name: r'uvIndex',
      type: IsarType.double,
    ),
    r'visibility': PropertySchema(
      id: 25,
      name: r'visibility',
      type: IsarType.double,
    ),
    r'weatherCode': PropertySchema(
      id: 26,
      name: r'weatherCode',
      type: IsarType.double,
    ),
    r'windDirection': PropertySchema(
      id: 27,
      name: r'windDirection',
      type: IsarType.double,
    ),
    r'windGust': PropertySchema(
      id: 28,
      name: r'windGust',
      type: IsarType.double,
    ),
    r'windSpeed': PropertySchema(
      id: 29,
      name: r'windSpeed',
      type: IsarType.double,
    )
  },
  estimateSize: _weatherItemEstimateSize,
  serialize: _weatherItemSerialize,
  deserialize: _weatherItemDeserialize,
  deserializeProp: _weatherItemDeserializeProp,
);

int _weatherItemEstimateSize(
  WeatherItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.time;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _weatherItemSerialize(
  WeatherItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cloudBase);
  writer.writeDouble(offsets[1], object.cloudCeiling);
  writer.writeDouble(offsets[2], object.cloudCover);
  writer.writeDouble(offsets[3], object.dewPoint);
  writer.writeDouble(offsets[4], object.evapotranspiration);
  writer.writeDouble(offsets[5], object.freezingRainIntensity);
  writer.writeDouble(offsets[6], object.humidity);
  writer.writeDouble(offsets[7], object.iceAccumulation);
  writer.writeDouble(offsets[8], object.iceAccumulationLwe);
  writer.writeDouble(offsets[9], object.precipitationProbability);
  writer.writeDouble(offsets[10], object.pressureSurfaceLevel);
  writer.writeDouble(offsets[11], object.rainAccumulation);
  writer.writeDouble(offsets[12], object.rainAccumulationLwe);
  writer.writeDouble(offsets[13], object.rainIntensity);
  writer.writeDouble(offsets[14], object.sleetAccumulation);
  writer.writeDouble(offsets[15], object.sleetAccumulationLwe);
  writer.writeDouble(offsets[16], object.sleetIntensity);
  writer.writeDouble(offsets[17], object.snowAccumulation);
  writer.writeDouble(offsets[18], object.snowAccumulationLwe);
  writer.writeDouble(offsets[19], object.snowIntensity);
  writer.writeDouble(offsets[20], object.temperature);
  writer.writeDouble(offsets[21], object.temperatureApparent);
  writer.writeString(offsets[22], object.time);
  writer.writeDouble(offsets[23], object.uvHealthConcern);
  writer.writeDouble(offsets[24], object.uvIndex);
  writer.writeDouble(offsets[25], object.visibility);
  writer.writeDouble(offsets[26], object.weatherCode);
  writer.writeDouble(offsets[27], object.windDirection);
  writer.writeDouble(offsets[28], object.windGust);
  writer.writeDouble(offsets[29], object.windSpeed);
}

WeatherItem _weatherItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeatherItem(
    cloudBase: reader.readDoubleOrNull(offsets[0]),
    cloudCeiling: reader.readDoubleOrNull(offsets[1]),
    cloudCover: reader.readDoubleOrNull(offsets[2]),
    dewPoint: reader.readDoubleOrNull(offsets[3]),
    evapotranspiration: reader.readDoubleOrNull(offsets[4]),
    freezingRainIntensity: reader.readDoubleOrNull(offsets[5]),
    humidity: reader.readDoubleOrNull(offsets[6]),
    iceAccumulation: reader.readDoubleOrNull(offsets[7]),
    iceAccumulationLwe: reader.readDoubleOrNull(offsets[8]),
    precipitationProbability: reader.readDoubleOrNull(offsets[9]),
    pressureSurfaceLevel: reader.readDoubleOrNull(offsets[10]),
    rainAccumulation: reader.readDoubleOrNull(offsets[11]),
    rainAccumulationLwe: reader.readDoubleOrNull(offsets[12]),
    rainIntensity: reader.readDoubleOrNull(offsets[13]),
    sleetAccumulation: reader.readDoubleOrNull(offsets[14]),
    sleetAccumulationLwe: reader.readDoubleOrNull(offsets[15]),
    sleetIntensity: reader.readDoubleOrNull(offsets[16]),
    snowAccumulation: reader.readDoubleOrNull(offsets[17]),
    snowAccumulationLwe: reader.readDoubleOrNull(offsets[18]),
    snowIntensity: reader.readDoubleOrNull(offsets[19]),
    temperature: reader.readDoubleOrNull(offsets[20]),
    temperatureApparent: reader.readDoubleOrNull(offsets[21]),
    time: reader.readStringOrNull(offsets[22]),
    uvHealthConcern: reader.readDoubleOrNull(offsets[23]),
    uvIndex: reader.readDoubleOrNull(offsets[24]),
    visibility: reader.readDoubleOrNull(offsets[25]),
    weatherCode: reader.readDoubleOrNull(offsets[26]),
    windDirection: reader.readDoubleOrNull(offsets[27]),
    windGust: reader.readDoubleOrNull(offsets[28]),
    windSpeed: reader.readDoubleOrNull(offsets[29]),
  );
  return object;
}

P _weatherItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readDoubleOrNull(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readDoubleOrNull(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readDoubleOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readDoubleOrNull(offset)) as P;
    case 28:
      return (reader.readDoubleOrNull(offset)) as P;
    case 29:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension WeatherItemQueryFilter
    on QueryBuilder<WeatherItem, WeatherItem, QFilterCondition> {
  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudBaseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cloudBase',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudBaseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cloudBase',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudBaseEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudBase',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudBaseGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloudBase',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudBaseLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloudBase',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudBaseBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloudBase',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCeilingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cloudCeiling',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCeilingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cloudCeiling',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCeilingEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudCeiling',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCeilingGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloudCeiling',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCeilingLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloudCeiling',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCeilingBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloudCeiling',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCoverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cloudCover',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCoverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cloudCover',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCoverEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudCover',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCoverGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloudCover',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCoverLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloudCover',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      cloudCoverBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloudCover',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      dewPointIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dewPoint',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      dewPointIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dewPoint',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> dewPointEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dewPoint',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      dewPointGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dewPoint',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      dewPointLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dewPoint',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> dewPointBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dewPoint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      evapotranspirationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      evapotranspirationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      evapotranspirationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      evapotranspirationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      evapotranspirationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      evapotranspirationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'evapotranspiration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      freezingRainIntensityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'freezingRainIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      freezingRainIntensityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'freezingRainIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      freezingRainIntensityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freezingRainIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      freezingRainIntensityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'freezingRainIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      freezingRainIntensityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'freezingRainIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      freezingRainIntensityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'freezingRainIntensity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      humidityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'humidity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      humidityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'humidity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> humidityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      humidityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      humidityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> humidityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'humidity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iceAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iceAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iceAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iceAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iceAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iceAccumulation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLweIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iceAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLweIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iceAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLweEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iceAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLweGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iceAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLweLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iceAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      iceAccumulationLweBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iceAccumulationLwe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      precipitationProbabilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitationProbability',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      precipitationProbabilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitationProbability',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      precipitationProbabilityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitationProbability',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      precipitationProbabilityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precipitationProbability',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      precipitationProbabilityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precipitationProbability',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      precipitationProbabilityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precipitationProbability',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      pressureSurfaceLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pressureSurfaceLevel',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      pressureSurfaceLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pressureSurfaceLevel',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      pressureSurfaceLevelEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pressureSurfaceLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      pressureSurfaceLevelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pressureSurfaceLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      pressureSurfaceLevelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pressureSurfaceLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      pressureSurfaceLevelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pressureSurfaceLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rainAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rainAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rainAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rainAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rainAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rainAccumulation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLweIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rainAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLweIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rainAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLweEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rainAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLweGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rainAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLweLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rainAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainAccumulationLweBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rainAccumulationLwe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainIntensityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rainIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainIntensityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rainIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainIntensityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rainIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainIntensityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rainIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainIntensityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rainIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      rainIntensityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rainIntensity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sleetAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sleetAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sleetAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sleetAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sleetAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sleetAccumulation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLweIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sleetAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLweIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sleetAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLweEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sleetAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLweGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sleetAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLweLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sleetAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetAccumulationLweBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sleetAccumulationLwe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetIntensityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sleetIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetIntensityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sleetIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetIntensityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sleetIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetIntensityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sleetIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetIntensityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sleetIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      sleetIntensityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sleetIntensity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'snowAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'snowAccumulation',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snowAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'snowAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'snowAccumulation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'snowAccumulation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLweIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'snowAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLweIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'snowAccumulationLwe',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLweEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snowAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLweGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'snowAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLweLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'snowAccumulationLwe',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowAccumulationLweBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'snowAccumulationLwe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowIntensityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'snowIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowIntensityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'snowIntensity',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowIntensityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snowIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowIntensityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'snowIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowIntensityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'snowIntensity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      snowIntensityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'snowIntensity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureApparentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperatureApparent',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureApparentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperatureApparent',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureApparentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperatureApparent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureApparentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperatureApparent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureApparentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperatureApparent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      temperatureApparentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperatureApparent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvHealthConcernIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uvHealthConcern',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvHealthConcernIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uvHealthConcern',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvHealthConcernEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uvHealthConcern',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvHealthConcernGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uvHealthConcern',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvHealthConcernLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uvHealthConcern',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvHealthConcernBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uvHealthConcern',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uvIndex',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uvIndex',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> uvIndexEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uvIndex',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      uvIndexGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uvIndex',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> uvIndexLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uvIndex',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> uvIndexBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uvIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibility',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibility',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      visibilityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibility',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      visibilityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visibility',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      visibilityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visibility',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      visibilityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      weatherCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherCode',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      weatherCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherCode',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      weatherCodeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weatherCode',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      weatherCodeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weatherCode',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      weatherCodeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weatherCode',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      weatherCodeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weatherCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windDirectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windDirection',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windDirectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windDirection',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windDirectionEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windDirection',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windDirectionGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windDirection',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windDirectionLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windDirection',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windDirectionBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windDirection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windGustIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windGust',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windGustIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windGust',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> windGustEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windGust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windGustGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windGust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windGustLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windGust',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition> windGustBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windGust',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windSpeedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windSpeed',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windSpeedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windSpeed',
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windSpeedEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windSpeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windSpeedGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windSpeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windSpeedLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windSpeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherItem, WeatherItem, QAfterFilterCondition>
      windSpeedBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windSpeed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension WeatherItemQueryObject
    on QueryBuilder<WeatherItem, WeatherItem, QFilterCondition> {}
