module Airial
  class PlaneControlBehavior
    def initialize window
      @window = window
      @speed = 0.005
      @friction_coefficient = 0.85
    end

    def update dt, entity
      if @window.button_down? Gosu::KbUp
        entity.velocity.y -= @speed * dt
      end
      if @window.button_down? Gosu::KbDown
        entity.velocity.y += @speed * dt
      end
      if @window.button_down? Gosu::KbLeft
        entity.velocity.x -= @speed * dt
      end
      if @window.button_down? Gosu::KbRight
        entity.velocity.x += @speed * dt
      end

      entity.velocity.x *= @friction_coefficient
      entity.velocity.y *= @friction_coefficient
      entity.position.x += entity.velocity.x * dt
      entity.position.y += entity.velocity.y * dt
    end
  end
end
