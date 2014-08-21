require_relative 'log_parser'

log = "[13263:INFO] 2014-03-03 15:11:40 :: Status: 201, Content-Length: 46, Response Time: 8.83ms"
puts Parser.parse_log(log)