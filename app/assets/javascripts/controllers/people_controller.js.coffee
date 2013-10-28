RcIva.PeopleController = Ember.ArrayController.extend
  actions:
    doStuff: ->
      @toggleProperty 'isShowing'

  isShowing: true
