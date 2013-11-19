RcIva.FormController = Ember.ObjectController.extend
  actions:
    editForm: ->
      @set('isEditing', true)

    acceptChanges: ->
      @set('isEditing', false)

      if Ember.isEmpty(@get('model.nit'))
        @send('removeForm')
      else
        @get('model').save()

    removeForm: ->
      form = @get('model')
      form.deleteRecord()
      form.save()

  isEditing: false
