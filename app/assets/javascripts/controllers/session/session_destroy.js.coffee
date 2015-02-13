App.SessionDestroyController = Ember.Controller.extend

  actions:

    logout: ->
      self = this
      App.Session.setProperties
        authToken: null
      console.debug("authToken: #{JSON.stringify(App.Session.get('authToken'), null, 4)}")
      self.transitionToRoute 'session.new'

