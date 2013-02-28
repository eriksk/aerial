module Aerial
  def self.load_image window, name
    Gosu::Image.new window, "#{CONTENT_ROOT}/gfx/#{name}.png"
  end
  
  def self.load_tiles window, name, tile_width, tile_height
    Gosu::Image.load_tiles window, "#{CONTENT_ROOT}/gfx/#{name}.png", tile_width, tile_height, true
  end

  def self.lerp x, y, w
    x + (y - x) * w
  end

  def self.color r = 255, g = 255, b = 255, a = 255
    c = Gosu::Color.new
    c.red = r
    c.green = g
    c.blue = b
    c.alpha = a
    c
  end
end

class Numeric
  def to_degrees
    self * 180.0 / Math::PI
  end
end
