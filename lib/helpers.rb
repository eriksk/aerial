module Aerial
  def self.load_image window, name
    Gosu::Image.new window, "#{CONTENT_ROOT}/gfx/#{name}.png"
  end
  
  def self.load_tiles window, name, tile_width, tile_height
    Gosu::Image.load_tiles window, "#{CONTENT_ROOT}/gfx/#{name}.png", tile_width, tile_height, true
  end
end

class Numeric
  def to_degrees
    self * 180.0 / Math::PI
  end
end
