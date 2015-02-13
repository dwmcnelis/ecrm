App.CustomerRoute = Ember.Route.extend

  model: (params) -> @store.find 'customer', params.id
