module Airial
  class Game
    def initialize window
      @window = window
      @entities = []
      @entities << Entity.new(Airial.load_image window, 'plane')
        .set_position(CENTER.x, CENTER.y)
    end

    def update dt
      @entities.each{ |e| e.update dt }
      nil
    end

    def draw
      @entities.each{ |e| e.draw }
      nil
    end
  end
end
