class ResqueJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :resque

  def perform(*args)
    10.times do |i|
      log "perform resque job #{i}"
      sleep 1
    end
  end
end
