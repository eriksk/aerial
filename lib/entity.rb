module Aerial
  class Entity
    attr_accessor :image, :position, :velocity, :origin, :rotation, :scale, :color

    def initialize image
      @image = image
      @position = Vec2.new
      @velocity = Vec2.new
      @origin = Vec2.new 0.5, 0.5
      @scale = Vec2.new 1.0, 1.0
      @rotation = 0.0
      @color = nil
      @behaviors = []
    end

    def add_behavior behavior
      @behaviors << behavior
      self
    end

    def set_position x, y
      @position.x, @position.y = x, y
      self
    end

    def set_velocity x, y
      @velocity.x, @velocity.y = x, y
      self
    end

    def set_scale scale
      @scale.x, @scale.y = x, y
      self
    end

    def update dt
      @behaviors.each{ |b| b.update dt, self }
    end

    def draw
      @image.draw_rot @position.x, @position.y, 0, @rotation.to_degrees, @origin.x, @origin.y, @scale.x, @scale.y
    end
  end
end
