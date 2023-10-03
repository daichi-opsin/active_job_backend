class InlineJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :inline

  def perform(*args)
    10.times do |i|
      log "perform inline job #{i}"
      sleep 1
    end
  end
end
