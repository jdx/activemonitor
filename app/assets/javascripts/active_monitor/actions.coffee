$ ->
  $('#request_chart').each ->
    $.getJSON $(this).data('url'), (data) ->
      $.plot $('#request_chart'), [data],
        crosshair: mode: 'x'
        series: lines: show: true
        grid: hoverable: true, autohighlight: false
