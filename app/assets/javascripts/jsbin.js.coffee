jsbin = ($div, url) ->
  $.get(url).done (data) ->
    $div.html(data)

$(document).ready ->
  $(".JsbinHtml").each ->
    $this = $(this)
    jsbin $this, $this.attr("url")
