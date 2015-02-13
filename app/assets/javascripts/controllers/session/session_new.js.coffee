App.SessionNewController = Ember.Controller.extend

  actions:

    login: ->
      self = this
      fields = @get('fields')
      if !Ember.isEmpty(fields.username) and !Ember.isEmpty(fields.password)
        data =
          username: fields.username
          password: fields.password
        $.post('http://localhost:3002/api/v1/authorize', data).done (response) ->
          App.Session.setProperties
            authToken: response.token
          console.debug("authToken: #{JSON.stringify(App.Session.get('authToken'), null, 4)}")
          attemptedTransition = App.Session.get('attemptedTransition')
          if attemptedTransition
            attemptedTransition.retry()
            App.Session.set 'attemptedTransition', null
          else
            self.transitionToRoute 'customers'

