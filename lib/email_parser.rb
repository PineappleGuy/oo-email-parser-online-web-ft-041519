# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  @@all = []

  def initialize(string)
    email = string.split(/,\s|\s/)
    email.each do |email|
      if @@all.detect(email) == false
        @@all << email
      end
  end

  def parse
    @@all
  end
end
