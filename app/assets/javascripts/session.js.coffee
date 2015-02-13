Ember.Application.initializer
  name: 'session'
  initialize: (container, application) ->
    App.Session = Ember.Object.extend(
      init: ->
        @_super()
        @set 'authToken', $.cookie('auth_token')
        return
      authTokenChanged: (->
        $.cookie 'auth_token', @get('authToken')
        return
      ).observes('authToken')).create()
    return
