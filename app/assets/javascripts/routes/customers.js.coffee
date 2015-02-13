#`import TabsComponent from './mixins/authenticated_routed_mixin';`

App.CustomersRoute = Ember.Route.extend App.AuthenticatedRouteMixin,

  model: -> @store.find 'customer'
