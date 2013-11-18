RcIva.FormsRoute = Ember.Route.extend
  model: ->
    @store.find('form')
