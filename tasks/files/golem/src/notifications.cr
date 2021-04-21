require "libnotify"
require "nats"
require "./configuration"

NATS_CONNECTION_STRING   = "#{CONFIGURATION["notifications"]["nats"]}"
NATS_NOTIFICATION_QUEUES = "#{CONFIGURATION["notifications"]["queues"]}".split(",")
NATS_NOTIFICATION_ICON   = "#{CONFIGURATION["notifications"]["icon"]}"

nats_client = NATS::Connection.new(NATS_CONNECTION_STRING)

NATS_NOTIFICATION_QUEUES.each do |queue|
  nats_client.subscribe(queue) do |message|
    Libnotify.new(summary: "Golem", body: "#{message}", icon_path: NATS_NOTIFICATION_ICON).show
  end
end
