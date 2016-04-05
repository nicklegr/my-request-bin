# coding: utf-8

require "mongoid"

# index({ created_at: 1 }, { name: "created_at_index" })

Mongoid.load!("mongoid.yml", :production)

# if development?
#   Mongoid.logger.level = Logger::DEBUG
#   Moped.logger.level = Logger::DEBUG
# end
