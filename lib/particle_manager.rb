module Aerial
  class ParticleManager
    attr_accessor :particles, :emitters

    def initialize window
      @window = window
      @particles = []
      @emitters = []
      @textures = Aerial.load_tiles window, "particles", 8, 8
    end

    def update dt
      @particles.each do |p|
        p.current += dt
        unless p.current > p.duration
          p.x += p.vel_x * dt
          p.y += p.vel_y * dt
          p.scale = Aerial.lerp(p.start_scale, p.end_scale, p.current / p.duration)
          p.color.red = Aerial.lerp(p.start_color.red, p.end_color.red, p.current / p.duration)
          p.color.green = Aerial.lerp(p.start_color.green, p.end_color.green, p.current / p.duration)
          p.color.blue = Aerial.lerp(p.start_color.blue, p.end_color.blue, p.current / p.duration)
          p.color.alpha = Aerial.lerp(p.start_color.alpha, p.end_color.alpha, p.current / p.duration)
          p.rotation += p.rot_speed * dt
        else
          @particles.delete p
        end
      end

      @emitters.each do |e|
        e.update dt, self
      end
      nil
    end

    def draw
      @particles.each do |p|
        @textures[p.source].draw_rot(p.x, p.y, 0, p.rotation.to_degrees, 0.5, 0.5, p.scale, p.scale, p.color)
      end
      nil
    end
  end
end
