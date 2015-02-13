App.CustomersNewController = Ember.Controller.extend

  actions:

    createCustomer: ->
      fields = @get('fields')
      if App.Customer.valid(fields)
        customer = @store.createRecord 'customer', fields
        customer.save().then =>
          @transitionToRoute 'customer', customer
      else
        @set 'showError', true
