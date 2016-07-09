require "yaml"
require_relative "speaker"

speach_components = YAML.load File.read("./phrases.yml")

speaker = Speaker.new(speach_components)

puts speaker.say_sentence
