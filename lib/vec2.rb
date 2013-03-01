module Aerial
  class Vec2
    attr_accessor :x, :y
    def initialize x = 0, y = 0
      @x, @y = x, y
    end

    def self.angle v1, v2
      Math.atan2(v2.y - v1.y, v2.x - v1.x)
    end

		def self.distance v1, v2
			Math::sqrt(((v1.x - v2.x) * (v1.x - v2.x)) + ((v1.y - v2.y) * (v1.y - v2.y)))
    end
  end
end
