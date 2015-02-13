# Rest interfaces
#DS.RESTAdapter.reopen
#  namespace: 'api/v1'
#  headers:
#    "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')

# Override the default adapter with the `DS.ActiveModelAdapter` which

App.ApplicationAdapter = DS.ActiveModelAdapter.extend({
  host: 'http://localhost:5002'
  namespace: 'api/v1'
  headers:
    "X-AUTH-TOKEN": 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOiI5NzUzIiwiZXhwIjpudWxsfQ.sDg1qCCcKIo_290O6jIk7fnYDU6b6by0LweFYlW6iqE'
})
