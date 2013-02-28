module Aerial
  class Game
    def initialize window
      @window = window
      @entities = []
      @entities << Entity.new(Aerial.load_image window, 'plane')
        .set_position(CENTER.x, CENTER.y)
        .add_behavior(PlaneControlBehavior.new(window))

      @scrolling_background = ScrollingBackground.new window
      @particle_manager = ParticleManager.new window
      @particle_manager.emitters << ParticleEmitter.new(@entities.first.position, Vec2.new(-16, 0), 50, 4, [1, 2])
    end

    def update dt
      @entities.each{ |e| e.update dt }
      @particle_manager.update dt
      @scrolling_background.update dt
      nil
    end

    def draw
      @scrolling_background.draw
      @entities.each{ |e| e.draw }
      @particle_manager.draw
      nil
    end
  end
end
