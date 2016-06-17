$ ->
  $headerTopBar = $('.header_topbar')
  $headerMain   = $('.header_main')

  $('.header_search').each ->
    $(@).on 'click', (e) ->
      $(@).attr('href', "/search?referer=#{encodeURIComponent(location.href)}")

  $headerTopBar.each -> new Sticky($(@))

  unless $headerMain.length
    $headerTopBar.addClass('is-transitioned')
    return

  topPosition = null

  do setActivePos = ->
    topPosition = $headerMain.offset().top + $headerMain.outerHeight()

  $(window).on 'load resize', setActivePos

  ScrollWalker.bind('topbar', [{
    p: topPosition
    enter: -> $headerTopBar.addClass('is-transitioned')
    leave: -> $headerTopBar.removeClass('is-transitioned')
  }])
