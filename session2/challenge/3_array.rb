# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_string = ""
    self.split("").each_slice(2) { |a , b| new_string += a if a != nil }
    return new_string
  end

end