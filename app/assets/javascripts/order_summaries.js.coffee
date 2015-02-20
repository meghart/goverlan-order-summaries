# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).bind 'DOMSubtreeModified', (e) ->
  $('td:contains(\'Pending\')').parent().addClass 'warning'
  return
  
$.rails.allowAction = (link) ->
  return true unless link.attr('data-confirm')
  $.rails.showConfirmDialog(link) # look bellow for implementations
  false # always stops the action since code runs asynchronously
 
$.rails.confirmed = (link) ->
  link.removeAttr('data-confirm')
  link.trigger('click.rails')
  
 $.rails.showConfirmDialog = (link) ->
  message = link.attr 'data-confirm'
  html = """
        <div class="modal" id="confirmationDialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">#{message}</h4>
                    </div>
                    <div class="modal-body">
                        <p>Once you delete, there's no going back.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">No, thanks</button>
                        <button type="button" class="btn btn-danger confirm">Yes, Delete</button>
                    </div>
                </div>
            </div>
        </div>
         """
  $(html).modal()
  $('#confirmationDialog .confirm').on 'click', -> $.rails.confirmed(link)
  
#lock = new Auth0Lock('<%= Rails.application.secrets.auth0_client_id %>', '<%= Rails.application.secrets.auth0_domain %>')

#signin = ->
  #lock.show
    #callbackURL: '<%= Rails.application.secrets.auth0_callback_url %>'
    #disableSignupAction: true,
    #responseType: 'code'
    #authParams: scope: 'openid profile'
  #return