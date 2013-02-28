module Aerial
  class Game
    def initialize window
      @window = window
      @entities = []
      @entities << Entity.new(Aerial.load_image window, 'plane')
        .set_position(CENTER.x, CENTER.y)
        .add_behavior(PlaneControlBehavior.new(window))
      @particle_manager = ParticleManager.new window

    end

    def update dt
      @entities.each{ |e| e.update dt }
      @particle_manager.update dt
      nil
    end

    def draw
      @entities.each{ |e| e.draw }
      @particle_manager.draw
      nil
    end
  end
end
