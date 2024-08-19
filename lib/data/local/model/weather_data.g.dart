// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeatherDataCollection on Isar {
  IsarCollection<WeatherData> get weatherDatas => this.collection();
}

const WeatherDataSchema = CollectionSchema(
  name: r'WeatherData',
  id: 2298948898357077248,
  properties: {
    r'daily': PropertySchema(
      id: 0,
      name: r'daily',
      type: IsarType.objectList,
      target: r'WeatherItem',
    ),
    r'hourly': PropertySchema(
      id: 1,
      name: r'hourly',
      type: IsarType.objectList,
      target: r'WeatherItem',
    ),
    r'updateAt': PropertySchema(
      id: 2,
      name: r'updateAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _weatherDataEstimateSize,
  serialize: _weatherDataSerialize,
  deserialize: _weatherDataDeserialize,
  deserializeProp: _weatherDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'location': LinkSchema(
      id: -6092810742475898928,
      name: r'location',
      target: r'MyLocation',
      single: true,
    )
  },
  embeddedSchemas: {r'WeatherItem': WeatherItemSchema},
  getId: _weatherDataGetId,
  getLinks: _weatherDataGetLinks,
  attach: _weatherDataAttach,
  version: '3.1.0+1',
);

int _weatherDataEstimateSize(
  WeatherData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.daily;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[WeatherItem]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              WeatherItemSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.hourly;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[WeatherItem]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              WeatherItemSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _weatherDataSerialize(
  WeatherData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<WeatherItem>(
    offsets[0],
    allOffsets,
    WeatherItemSchema.serialize,
    object.daily,
  );
  writer.writeObjectList<WeatherItem>(
    offsets[1],
    allOffsets,
    WeatherItemSchema.serialize,
    object.hourly,
  );
  writer.writeDateTime(offsets[2], object.updateAt);
}

WeatherData _weatherDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeatherData(
    daily: reader.readObjectList<WeatherItem>(
      offsets[0],
      WeatherItemSchema.deserialize,
      allOffsets,
      WeatherItem(),
    ),
    hourly: reader.readObjectList<WeatherItem>(
      offsets[1],
      WeatherItemSchema.deserialize,
      allOffsets,
      WeatherItem(),
    ),
  );
  object.id = id;
  return object;
}

P _weatherDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<WeatherItem>(
        offset,
        WeatherItemSchema.deserialize,
        allOffsets,
        WeatherItem(),
      )) as P;
    case 1:
      return (reader.readObjectList<WeatherItem>(
        offset,
        WeatherItemSchema.deserialize,
        allOffsets,
        WeatherItem(),
      )) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _weatherDataGetId(WeatherData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weatherDataGetLinks(WeatherData object) {
  return [object.location];
}

void _weatherDataAttach(
    IsarCollection<dynamic> col, Id id, WeatherData object) {
  object.id = id;
  object.location
      .attach(col, col.isar.collection<MyLocation>(), r'location', id);
}

extension WeatherDataQueryWhereSort
    on QueryBuilder<WeatherData, WeatherData, QWhere> {
  QueryBuilder<WeatherData, WeatherData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeatherDataQueryWhere
    on QueryBuilder<WeatherData, WeatherData, QWhereClause> {
  QueryBuilder<WeatherData, WeatherData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeatherDataQueryFilter
    on QueryBuilder<WeatherData, WeatherData, QFilterCondition> {
  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> dailyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'daily',
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      dailyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'daily',
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      dailyLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'daily',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> dailyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'daily',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      dailyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'daily',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      dailyLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'daily',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      dailyLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'daily',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      dailyLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'daily',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> hourlyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hourly',
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hourly',
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourly',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourly',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourly',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourly',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourly',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      hourlyLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourly',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> updateAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      updateAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      updateAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> updateAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeatherDataQueryObject
    on QueryBuilder<WeatherData, WeatherData, QFilterCondition> {
  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> dailyElement(
      FilterQuery<WeatherItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'daily');
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> hourlyElement(
      FilterQuery<WeatherItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'hourly');
    });
  }
}

extension WeatherDataQueryLinks
    on QueryBuilder<WeatherData, WeatherData, QFilterCondition> {
  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition> location(
      FilterQuery<MyLocation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'location');
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterFilterCondition>
      locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'location', 0, true, 0, true);
    });
  }
}

extension WeatherDataQuerySortBy
    on QueryBuilder<WeatherData, WeatherData, QSortBy> {
  QueryBuilder<WeatherData, WeatherData, QAfterSortBy> sortByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterSortBy> sortByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension WeatherDataQuerySortThenBy
    on QueryBuilder<WeatherData, WeatherData, QSortThenBy> {
  QueryBuilder<WeatherData, WeatherData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterSortBy> thenByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.asc);
    });
  }

  QueryBuilder<WeatherData, WeatherData, QAfterSortBy> thenByUpdateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateAt', Sort.desc);
    });
  }
}

extension WeatherDataQueryWhereDistinct
    on QueryBuilder<WeatherData, WeatherData, QDistinct> {
  QueryBuilder<WeatherData, WeatherData, QDistinct> distinctByUpdateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateAt');
    });
  }
}

extension WeatherDataQueryProperty
    on QueryBuilder<WeatherData, WeatherData, QQueryProperty> {
  QueryBuilder<WeatherData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeatherData, List<WeatherItem>?, QQueryOperations>
      dailyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'daily');
    });
  }

  QueryBuilder<WeatherData, List<WeatherItem>?, QQueryOperations>
      hourlyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hourly');
    });
  }

  QueryBuilder<WeatherData, DateTime, QQueryOperations> updateAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateAt');
    });
  }
}
