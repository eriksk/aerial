module Aerial
  def self.load_image window, name
    Gosu::Image.new window, "#{CONTENT_ROOT}/gfx/#{name}.png"
  end
end

class Numeric
  def to_degrees
    self * 180.0 / Math::PI
  end
end
