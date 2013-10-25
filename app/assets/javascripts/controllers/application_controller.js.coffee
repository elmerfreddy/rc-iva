RcIva.ApplicationController = Ember.ArrayController.extend
  actions:
    showName: ->
      name = @get('name')
      if !name.trim()
        return

      @set('name', '')

      alert name
