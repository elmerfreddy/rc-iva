RcIva.FormController = Ember.ObjectController.extend
  actions:
    removeForm: ->
      form = @get('model')
      form.deleteRecord()
