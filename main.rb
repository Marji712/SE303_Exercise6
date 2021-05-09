def draw_button(button, is_dark_mode)
  if is_dark_mode
    # darken foreground color for dark mode
    draw_dark_mode_button(button)
  else
    # lighten foreground color for non-dark mode
    draw_light_mode_button(button)
  end
end

def draw_dark_mode_button(button)
  paint(button.label_text, button.x, button.y, button.foreground_color - 10, '#111111')
end

def draw_light_mode_button(button)
  paint(button.label_text, button.x, button.y, button.foreground_color + 10, '#E0E0E0')
end

class Button
  attr_accessor :label_text, :x, :y, :foreground_color,

  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end
end

button = Button.new(label_text, x, y, foreground_color)
draw_button(button)