class SidekiqJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :sidekiq

  def perform(*args)
    10.times do |i|
      log "perform sideqik job #{i}"
      sleep 1
    end
  end
end
