require './lib/vec2'
require './lib/helpers'

def require_dir dir
  Dir.glob("#{dir}/*") do |f|
    require_relative f
  end
end

module Aerial
  WIDTH = 1280
  HEIGHT = 720
  FULLSCREEN = false
  CONTENT_ROOT = "content"
  TITLE = "Aerial"
  CENTER = Vec2.new WIDTH / 2.0, HEIGHT / 2.0
end

require './lib/entity'
require './lib/game'
require './lib/particle_manager'
require './lib/particle'
require './lib/particle_emitter'

require_dir "./lib/behaviors"
