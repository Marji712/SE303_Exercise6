def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  button = Button.new(label_text, x, y, foreground_color)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(label_text, x, y, foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(label_text, x, y, foreground_color + 10, '#E0E0E0')
  end
end

class Button
  attr_accessor :label_text, :x, :y, :foreground_color

  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end
end