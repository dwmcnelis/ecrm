# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
  rootURL: '/'
  location: 'auto'

App.Router.map ->
  @resource 'session', ->
    @route 'new'#, path: 'signin'
    @route 'destroy'#, path: 'signout'
  @resource 'customers', path: '/', ->
    @route 'new'
    @resource 'customer', path: 'customers/:id', ->
      @route 'edit'
  return
