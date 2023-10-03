class AsyncJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :async # ActiveJob::QueueAdapters::AsyncAdapter.new(min_threads: 1, max_thread: 1)

  def perform(*args)
    10.times do |i|
      log "perform async job #{i}"
      sleep 1
    end
  end
end
