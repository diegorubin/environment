require "yaml"

CONFIGURATION = File.open("#{ENV["HOME"]}/.config/golem/config.yaml") do |file|
  YAML.parse(file)
end
