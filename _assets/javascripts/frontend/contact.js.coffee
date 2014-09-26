$ ->
  $('select').selectpicker()
  $('select.budget.selectpicker').on 'change', () ->
    if $(this).val() != ''
      $('.budget.bootstrap-select .filter-option').css color: '#555'
    else
      $('.budget.bootstrap-select .filter-option').css color: '#999'

  $(".contact-button").on "click", () ->
    $(this).toggleClass "active"
    $("#contact-form-error").html("")
    $("#contact-form-success").html("")
    $(".contact-form").slideToggle 300, () ->
      $("html,body").animate { scrollTop: $("#contact").offset().top - 30 }, 650

  $("#contactForm").validate
    errorElement: "span"
    , errorClass: "help-block"
    , errorPlacement: (error, element) ->
      return

    , highlight: (element) ->
      $(element).closest(".form-group").addClass "has-error"

    , rules:
      first_name: "required"
      , last_name: "required"
      , company: "required"
      , email:
        email: true
        , required: true
      , message: "required"

    , unhighlight: (element) ->
      $(element).closest('.form-group').removeClass 'has-error'

    , submitHandler: (form) =>
      $submitBtn         = $(form).find('button[type=submit]')
      originalButtonText = $submitBtn.html()

      $submitBtn.prop('disabled', true).html('Submitting...')

      textBody = """
        Contact Information
        ====================

        First name: #{$(form).find('input#first_name').val()}
        Last name:  #{$(form).find('input#last_name').val()}
        Company:    #{$(form).find('input#company').val()}
        Email:      #{$(form).find('input#email').val()}
        Phone:      #{$(form).find('input#phone').val()}
        Budget:     #{$(form).find('select#budget').val()}

        Message
        ====================

        #{$(form).find('textarea#message').val()}
      """

      $.ajax
        type:  "POST"
        , url: $(form).prop('action')
        , data: $(form).serializeArray()
        , success: (data, status, xhr) ->
          if data[0].status == "rejected" || data[0].status == "invalid"
            $('#contact-form-error').html """
              <div class='alert alert-danger'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <strong>Sorry, there was a problem submitting the form.</strong>
                Please check your entries and try again. If the problem persists, please email us directly to <a target="_blank" href='mailto:contact@velocitylabs.io?body=#{encodeURIComponent(textBody)}'>contact@velocitylabs.io</a>.
              </div>
            """
          else
            $('.contact-form').slideToggle 300, () ->
              $('.contact-button').toggleClass 'active'

              $('#contact-form-success').html """
                <div class='alert alert-success'>
                  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                  <strong>Thanks #{$("input#first_name").val()}, your message has been sent. We'll get back with you shortly.</strong>
                </div>
              """

              $('#contact-form-error').html("")
              $('#contactForm').trigger "reset"

        , error: (xhr, status, error) ->
            $('#contact-form-error').html """
              <div class='alert alert-danger'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <strong>Sorry #{$("input#first_name").val()}, it seems the mail server is not responding...</strong>
                Could you please send an email directly to <a target="_blank" href='mailto:contact@velocitylabs.io?body=#{encodeURIComponent(textBody)}'>contact@velocitylabs.io</a>?
              </div>
            """
        , complete: () ->
          $('#contactForm button[type=submit]').prop('disabled', false).html(originalButtonText)
          _gaq.push(['_trackEvent', 'Contact Form', 'Submitted', 'From Homepage', $('#budget option:selected').val()]);
