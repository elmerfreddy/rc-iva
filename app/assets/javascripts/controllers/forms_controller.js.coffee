RcIva.FormsController = Ember.ArrayController.extend
  actions: {
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

      form.save()
  }
