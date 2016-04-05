# coding: utf-8

require "bundler"
Bundler.require

class Work
  def self.crawl
  end
end

module Clockwork
  def self.crawl
    Work.crawl
  end

  handler do |job|
    self.send(job.to_sym)
  end

  every(1.hour, "crawl", :at => "**:00")
  # every(30.second, "crawl")
end
