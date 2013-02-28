module Aerial
  class Particle
    attr_accessor :x, :y, :vel_x, :vel_y, :scale, :rotation, :rot_speed, :current, :duration, :source

    def initialize
      @x, @y = 0.0, 0.0
      @scale = 1.0
      @rotation = 0.0
      @vel_x = 0.0
      @vel_y = 0.0
      @rot_speed = 0.0
      @current = 0.0
      @duration = 0.0
      @source = 0
    end

    def reset
      @current = 0.0
    end
  end
end
