# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#conversion_form').on('ajax:success', (e, data, status, xhr) ->
    $('#conversion_result').text(data)
  ).bind('ajax:error', ->
    $('#conversion_result').text('Sorry, something went wrong')
  )