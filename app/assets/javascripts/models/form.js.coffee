# for more details see: http://emberjs.com/guides/models/defining-models/

RcIva.Form = DS.Model.extend
  nit: DS.attr 'string'
  invoice: DS.attr 'string'
  authorization: DS.attr 'string'
  date: DS.attr 'string'
  amount: DS.attr 'number'
  code: DS.attr 'string'
