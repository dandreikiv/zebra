module VideosHelper

  def videoCode(video)
    width = 200
    height = 200
    html = "<iframe src='#{video.url}' width='#{width}' height='#{height}' frameborder='0'></iframe>"
    return '<iframe src="http://www.youtube.com/watch?v=eXZv0tbqTOI" width="200" height="200" frameborder="0"></iframe>'
  end

end
