RcIva.FormsController = Ember.ArrayController.extend
  totalAmount: (->
    @get('model').reduce ((prevVal, item) ->
      prevVal + parseInt(item.get('amount') || 0, 10)
    ), 0
  ).property('model.@each.amount')

  percentageAmount: (->
    total = @get('totalAmount') || 0
    Math.floor(total * 0.13)
  ).property('totalAmount')

  actions:
    saveForm: ->
      @get('store').commit()

    createForm: ->
      nit = @get('nit')
      invoice = @get('invoice')
      authorization = @get('authorization')
      date = @get('date')
      amount = @get('amount')
      code = @get('code')
      return if !nit.trim()

      form = RcIva.Form.createRecord
        nit: nit
        invoice: invoice
        authorization: authorization
        date: date
        amount: amount
        code: code

      @set('nit', '')
      @set('invoice', '')
      @set('authorization', '')
      @set('date', '')
      @set('amount', '')
      @set('code', '')
