class AsyncJob < ApplicationJob
  queue_as :default
  self.queue_adapter = ActiveJob::QueueAdapters::AsyncAdapter.new(min_threads: 1, max_threads: 1)

  def perform(*args)
    10.times do |i|
      log "perform async job #{i}"
      sleep 1
    end
  end
end
