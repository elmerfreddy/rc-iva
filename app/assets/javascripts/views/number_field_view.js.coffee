onlyNumber = (input) ->
  input.toString().replace(/[^\d]/g, "")

RcIva.NumberFieldView = Ember.TextField.extend
  _cleanValue: (->
    @set('value', onlyNumber(@get('value')))
  ).observes('value')
