#= require jquery
#= require jquery_ujs
#= require jquery.cookie
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require crm

# for more details see: http://emberjs.com/guides/application/
window.App = Ember.Application.create(rootElement: '#ember-app',
                                      LOG_TRANSITIONS: true)
