require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
     @emails = emails
   end

   def parse
     parser = []
     parser = @emails.split(/[,\s]/)
     parser = parser.uniq
     parser1 = parser.reject { |item| item.nil? || item == '' }
     # refactor like this?
     # parser.uniq! { |x| x[:emails] }
     parser1
     # binding.pry
   end
end
