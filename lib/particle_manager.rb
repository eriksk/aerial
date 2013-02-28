module Aerial
  class ParticleManager
    attr_accessor :particles

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
        @textures[p.source].draw_rot(p.x, p.y, 0, p.rotation.to_degrees, 0.5, 0.5, p.scale, p.scale)
      end
      nil
    end
  end
end
