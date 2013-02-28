module Aerial
  class ParticleEmitter

    def initialize target, offset, interval = 100, count = 1, sources = [0]
      @target = target # vec2
      @offset = offset
      @interval = interval
      @count = count
      @sources = sources
      @current = 0.0
    end

    def update dt, particle_manager
      @current += dt
      if @current > @interval
        @current = 0.0
        @count.times do |i|
          p = Particle.new()
          p.x = @target.x + @offset.x
          p.y = @target.y + @offset.y
          p.vel_x = (-1.0 * (0.5 + rand())) * 0.8
          p.vel_y = (-0.5 + rand()) * 0.1
          p.duration = 200 + (100 * rand())
          p.source = @sources[(rand() * @sources.size).to_i]
          p.reset
          particle_manager.particles << p
        end
      end
    end
  end
end
