App.Customer = DS.Model.extend
  email:     DS.attr 'string'
  company:     DS.attr 'string'
  nameFirst: DS.attr 'string'
  nameLast:  DS.attr 'string'
  nameFull:  DS.attr 'string'
  phone:     DS.attr 'string'
  address:     DS.attr 'string'
  city:     DS.attr 'string'
  state:     DS.attr 'string'
  postal:     DS.attr 'string'
#status:    DS.attr 'string', defaultValue: 'new'
#notes:     DS.attr 'string'

  nameFull: ( ->
    @get('nameFirst') + ' ' + @get('nameLast')
  ).property('nameFirst', 'nameLast')

App.Customer.reopenClass
#STATUSES: ['new', 'in progress', 'closed', 'bad']

  valid: (fields) ->
    fields.nameFirst and fields.nameLast
