App.SessionNewRoute = Ember.Route.extend

  setupController: (controller) ->
    controller.set 'fields', {username: 'davemcnelis@gmail.com', password: ''}
    controller.set 'showError', false
