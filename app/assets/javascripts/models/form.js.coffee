# for more details see: http://emberjs.com/guides/models/defining-models/

RcIva.Form = DS.Model.extend
  nit: DS.attr 'number'
  invoice: DS.attr 'number'
  authorization: DS.attr 'number'
  date: DS.attr 'string'
  amount: DS.attr 'number'
  code: DS.attr 'string'
