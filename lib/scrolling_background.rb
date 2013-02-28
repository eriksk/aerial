module Aerial
  class ScrollingBackground
    def initialize window
      @window = window
      @x = 0
      @speed = 0.8
      @ground_image = Aerial.load_image window, "ground_1"
      @mountains_image = Aerial.load_image window, "mountains_1"
      @mountains_2_image = Aerial.load_image window, "mountains_2"
    end

    def update dt
      @x -= @speed * dt
      if @x < -WIDTH
        @x += WIDTH
      end
    end

    def draw
      ((WIDTH / @mountains_2_image.width) * 2).times do |i|
        @mountains_2_image.draw ((@x / 5.0) + (@mountains_2_image.width * i)).to_i, HEIGHT - 256, 0
      end

      ((WIDTH / @mountains_image.width) * 2).times do |i|
        @mountains_image.draw ((@x / 2.0) + (@mountains_image.width * i)).to_i, HEIGHT - 128, 0
      end

      ((WIDTH / @ground_image.width) * 2).times do |i|
        @ground_image.draw (@x + (@ground_image.width * i)).to_i, HEIGHT - @ground_image.height, 0
      end
    end
  end
end
