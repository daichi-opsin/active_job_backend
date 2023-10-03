class DelayedJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :delayed_job

  def perform(*args)
    10.times do |i|
      log "perform delayed_job job #{i}"
      sleep 1
    end
  end
end
