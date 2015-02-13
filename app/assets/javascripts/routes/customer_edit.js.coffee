App.CustomerEditRoute = Ember.Route.extend

  activate:   -> @controllerFor('customer').set 'isEditing', true
  deactivate: -> @controllerFor('customer').set 'isEditing', false
