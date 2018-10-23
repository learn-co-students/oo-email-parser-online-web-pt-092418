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
     arr = []
     arr = @emails.split(/[,\s]/)
     arr = arr.uniq
     arr.reject { |item| item.nil? || item == '' }
     # refactor like this?
     # arr.uniq! { |x| x[:emails] }
     # binding.pry
   end
end
