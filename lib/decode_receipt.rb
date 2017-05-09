#!/usr/bin/env ruby

require 'json'
require 'itunes_receipt_decoder'


base64_encoded_receipt_path = ARGV[0]

unless File.exist?(base64_encoded_receipt_path) then
  $stderr.puts("File does not exists: #{base64_encoded_receipt_path}")
  exit 1
end

unless File.readable?(base64_encoded_receipt_path) then
  $stderr.puts("File is not readable: #{base64_encoded_receipt_path}")
  exit 1
end


base64_encoded_receipt = ''

File.open(base64_encoded_receipt_path, mode: 'rb:ASCII-8BIT') { |file|
  base64_encoded_receipt = file.read
}

decoder = ItunesReceiptDecoder.new(base64_encoded_receipt)
decoder.receipt[:opaque_value] = '<BINARY>'
decoder.receipt[:sha1_hash] = '<BINARY>'
json = JSON.pretty_generate(decoder.receipt)
puts(json)
