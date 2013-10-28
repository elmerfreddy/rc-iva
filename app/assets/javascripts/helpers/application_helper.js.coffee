Ember.Handlebars.helper('money', (amount, options) ->
  # rounded = (Math.round(amount * 100) / 100).toFixed(2)
  rounded = Math.round(amount)
  "$ #{ rounded }"
)
