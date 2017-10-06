# coding: utf-8

require "bundler"
Bundler.require

require "pp"

get "/" do
  http_headers = request.env.select { |k, v| k.start_with?('HTTP_')}
  http_headers.each do |k, v|
    k =~ /HTTP_(.+)/
    puts "#{$1}: #{v}"
  end
  STDOUT.flush

  "OK"
end
