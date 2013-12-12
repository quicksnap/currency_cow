# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

$(document).ready ->
  $('#conversion_form').on('ajax:success', (e, data, status, xhr) ->
    $('#conversion_result').text(data+' ...moo!')
  ).bind('ajax:error', ->
    $('#conversion_result').text('Sorry, something went wrong')
  )
  $('#from_country').combobox()
  $('#to_country').combobox()

  $('.ui-widget').focus (event)->
    setTimeout(=>
      $(@).select()
    ,100)

