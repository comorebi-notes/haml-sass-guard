require 'securerandom'

def render(file)
  Haml::Template.new("src/haml/_#{file}.haml").render
end

def css_link_tag(file)
  tag = "%link{ rel: :stylesheet, href: '#{file}?#{SecureRandom.hex(10)}' }"
  Haml::Template.new { tag }.render
end

def image_tag(src, options)
  tag = "%img#{options.merge(src: "#{src}?#{SecureRandom.hex(10)}")}"
  Haml::Template.new { tag }.render
end
