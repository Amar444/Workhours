# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
@hide_notice_after = (time, e) ->
  setInterval (->

    $(e).hide()
  ), time*1000