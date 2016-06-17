class Login extends APP.Login
  bind: ->
    super()
    btns = @block.find('@choice-type')
    btns.on 'click', (e) =>
      btn = $(e.currentTarget)
      $('#go-reg').attr('href', btn.data('value'))
      btns.removeClass('active')
      btn.addClass('active')

window.RegistrationForms = new Login
