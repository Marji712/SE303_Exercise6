def draw_button(button)
  if button.is_dark_mode
    # darken foreground color for dark mode
    paint(button.label_text, button.x, button.y, button.foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(button.label_text, button.x, button.y, button.foreground_color + 10, '#E0E0E0')
  end
end

class Button
  attr_accessor :label_text, :x, :y, :foreground_color, :is_dark_mode

  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end
end

button = Button.new(label_text, x, y, foreground_color, is_dark_mode)
draw_button(button)