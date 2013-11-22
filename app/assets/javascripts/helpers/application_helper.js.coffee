Ember.Handlebars.helper('money', (amount, options) ->
  precision = 2
  precision = Math.pow(10, precision)
  rounded = (Math.round(amount * precision) / precision).toFixed(2)
  "$ #{ rounded }"
)

Ember.Handlebars.helper('edit-form', RcIva.EditFormView)

Ember.Handlebars.helper('input-number', RcIva.NumberFieldView)
