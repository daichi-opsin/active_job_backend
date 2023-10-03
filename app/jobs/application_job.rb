require 'uri'
require 'net/http'
class ApplicationJob < ActiveJob::Base
  def log(message)
    job_logger = Logger.new("log/job.log")
    job_logger.debug(message)
  end
end
