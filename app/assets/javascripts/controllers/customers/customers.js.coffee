App.CustomersController = Ember.ArrayController.extend
  sortProperties: ['nameFirst', 'nameLast']

  customers: ( ->
    if @get('search') then @get('searchedCustomers') else @
  ).property('search', 'searchedCustomers')

  searchedCustomers: ( ->
    search = @get('search').toLowerCase()
    @filter (customer) => customer.get('nameFull').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.nameFull')
