require 'securerandom'

class SecureRandomString < String

  UC_LETTERS = ('A'..'Z').to_a.freeze
  LC_LETTERS = ('a'..'z').to_a.freeze
  NUMBERS = (0..9).to_a.freeze
  CHARACTERS = %w{/ . , + ^ [ ] - + - = _ * % @ : # ~}.freeze

  def initialize(length, options = {})
    # By default, don't include characters in strings.
    options[:characters] ||= false

    # Build a set of possible characters for the string
    set = []
    set += UC_LETTERS       unless options[:uppercase] == false
    set += LC_LETTERS       unless options[:lowercase] == false
    set += NUMBERS          unless options[:numbers] == false
    set += CHARACTERS       unless options[:characters] == false
    set += options[:extra]  if options[:extra].is_a?(Array)

    # Populate the string
    length.times.each do
      self << set[SecureRandom.random_number(set.size)].to_s
    end
  end

end
