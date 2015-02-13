Ember.$.ajaxPrefilter (options, originalOptions, jqXHR) ->
  if !jqXHR.crossDomain
    #jqXHR.setRequestHeader 'X-AUTH-TOKEN', "#{App.Session.get('authToken')}"
    jqXHR.setRequestHeader 'X-AUTH-TOKEN', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOiI5NzUzIiwiZXhwIjpudWxsfQ.sDg1qCCcKIo_290O6jIk7fnYDU6b6by0LweFYlW6iqE'
  return
