# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list

  def initialize(email)
    @email_list = email
  end

  def parse
    @email_list.split(/\s|,/).delete_if { |email| email == ""}.uniq
  end
end