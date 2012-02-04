content_type('text/html')
end_headers()

show_header({
  class = 'video archive'
})

include("html/video.html", {
  title = string.sub(forum.request.get.file, 14, -5),
  src = forum.archive_root .. 'videos/' .. string.gsub(forum.request.get.file, '&', '&amp;'),
  width = 620,
  height = 465
})

include("html/footer.html")