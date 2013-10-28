# for more details see: http://emberjs.com/guides/models/defining-models/

RcIva.Person = DS.Model.extend
  name: DS.attr 'string'
  lastName: DS.attr 'string'
  age: DS.attr 'number'
