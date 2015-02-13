App.AuthenticatedRouteMixin = Ember.Mixin.create(
  redirectToLogin: (transition) ->
    App.Session.set 'attemptedTransition', transition
    @transitionTo 'session.new'

  beforeModel: (transition) ->
    #App.Session.set('authToken', null)
    console.debug("authToken: #{JSON.stringify(App.Session.get('authToken'), null, 4)}")

    if false and !App.Session.get('authToken')
      @redirectToLogin transition
)
