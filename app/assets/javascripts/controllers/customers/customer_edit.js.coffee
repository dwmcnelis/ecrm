App.CustomerEditController = Ember.ObjectController.extend

  actions:

    cancel: ->
      @get('model').rollback()
      @transitionToRoute 'customer'

    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'customer'
