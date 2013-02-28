require './lib/vec2'
require './lib/helpers'

def require_dir dir
  Dir.glob("#{dir}/*") do |f|
    require_relative f
  end
end

module Airial
  WIDTH = 1280
  HEIGHT = 720
  FULLSCREEN = false
  CONTENT_ROOT = "content"
  TITLE = "Airial"
  CENTER = Vec2.new WIDTH / 2.0, HEIGHT / 2.0
end

require './lib/entity'
require './lib/game'

require_dir "./lib/behaviors"
