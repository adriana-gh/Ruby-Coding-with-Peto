

# \d - matches any digit
# \w - matches any word character (alphanumeric & underscore)
# \s - matches any whitespace character (space, tab, newline)
# \D - matches any non-digit
# \W - matches any non-word character
# \S - matches any non-whitespace character

# . (dot) - matches any single character
# \ - escapes the following character (if it would otherwise be interpreted as a special character)

# * - matches zero or more of the preceding character or group
# + - matches one or more of the preceding character or group
# ? - matches zero or one of the preceding character or group

# ^ - matches the start of a line
# $ - matches the end of a line

# {n} - matches exactly n of the preceding character or group
# {n,} - matches n or more of the preceding character or group
# {n,m} - matches at least n and at most m of the preceding character or group

# | - matches either the preceding or the following character or group

# [] - matches any single character within the square brackets
# [^] - matches any single character not within the square brackets

# () - groups characters and allows for applying operators to the group as a whole



r = /\w+(\.\w+)*@\w+\.(com)|(eu)|(sk)/

%w[abc@def.com address@home.eu first.last@another.sk first@.x @host.x firsthost.x firsthost a.b.c@d.com b@c.com].each.with_index do |s, i|
  puts "test#{i}: #{s.match?(r)}"
end

