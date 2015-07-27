# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  clearNewIndustry = () ->
    $('#newIndustryField').val("")
  hideIndustryList = () ->
    $('#industryList').hide()
  hideNewIndustry = () ->
    $('#newIndustry').hide()
  showIndustryList = () ->
    $('#industryList').show()
  showNewIndustry =  () ->
    $('#newIndustry').show()

  $('#addIndustry').click ->
    hideIndustryList()
    showNewIndustry()
    false

  $('#showIndustryList').click ->
    hideNewIndustry()
    showIndustryList()
    clearNewIndustry()
    false
    
  $('select').selectpicker();
    
