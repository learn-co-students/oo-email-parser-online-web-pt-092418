# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails
  @@list = []

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    new_array = emails.split /[\,\s]/
    last_array = new_array.delete_if{|string| string.empty? }
    last_array.uniq
  end
end
