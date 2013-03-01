module Aerial
  class ChopperMovementBehavior
    def initialize
      @target = Vec2.new
      @speed = 0.1
      new_target
    end

    def new_target
      @target.x = rand() * WIDTH
      @target.y = rand() * HEIGHT
    end

    def update dt, entity
      if Vec2.distance(@target, entity.position) < 64
        new_target
      end
      angle = Vec2.angle entity.position, @target
      entity.position.x += Math::cos(angle) * @speed * dt
      entity.position.y += Math::sin(angle) * @speed * dt
    end
  end
end
