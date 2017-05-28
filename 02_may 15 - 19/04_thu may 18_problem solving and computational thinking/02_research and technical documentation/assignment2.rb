02 - Research and Technical Documentation
Assignment

For each of the methods listed below

1. Read the docs
2. Try out the method in irb using a few different values
3. Once you feel like you understand how it works, write down
- its arguments (name, data type, optional/required, default value if any)
- its return type
- a line of code showing how to call the method and what will be returned
The Ruby documentation can be alienating even for the most experienced developer. If (when) you get confused along the way, don't hesitate to ask for help! Also know that it's ok to not understand every word you read in the documentation. Your goal should be to piece together some understanding from the parts that do make sense.

String
1. length
2. strip
3. split
4. start_with?

Array
1. first
2. delete_at
3. delete
4. pop

Hash
1. to_a
2. has_key?
3. has_value?

Time
1. now

File
1. exist?
2. extname
--------------------------------------------------------------------------------
String
1. length
length → integer
Returns the character length of str.

2. strip
strip → new_str
Returns a copy of str with leading and trailing whitespace removed.
Whitespace is defined as any of the following characters: null, horizontal tab, line feed, vertical tab, form feed, carriage return, space.

"    hello    ".strip   #=> "hello"
"\tgoodbye\r\n".strip   #=> "goodbye"
"\x00\t\n\v\f\r ".strip #=> ""

3. split
split(pattern=nil, [limit]) → anArray
Divides str into substrings based on a delimiter, returning an array of these substrings.
If pattern is a String, then its contents are used as the delimiter when splitting str. If pattern is a single space, str is split on whitespace, with leading whitespace and runs of contiguous whitespace characters ignored.
If pattern is a Regexp, str is divided where the pattern matches. Whenever the pattern matches a zero-length string, str is split into individual characters. If pattern contains groups, the respective matches will be returned in the array as well.
If pattern is nil, the value of $; is used. If $; is nil (which is the default), str is split on whitespace as if ‘ ’ were specified.
If the limit parameter is omitted, trailing null fields are suppressed. If limit is a positive number, at most that number of fields will be returned (if limit is 1, the entire string is returned as the only entry in an array). If negative, there is no limit to the number of fields returned, and trailing null fields are not suppressed.
When the input str is empty an empty Array is returned as the string is considered to have no fields to split.

" now's  the time".split        #=> ["now's", "the", "time"]
" now's  the time".split(' ')   #=> ["now's", "the", "time"]
" now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
"1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3)            #=> ["h", "e", "llo"]
"hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]

"mellow yellow".split("ello")   #=> ["m", "w y", "w"]
"1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
"1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]
"1,2,,3,4,,".split(',', -4)     #=> ["1", "2", "", "3", "4", "", ""]

"".split(',', -1)               #=> []

4. start_with?
start_with?([prefixes]+) → true or false
Returns true if str starts with one of the prefixes given.

"hello".start_with?("hell")               #=> true

# returns true if one of the prefixes matches.
"hello".start_with?("heaven", "hell")     #=> true
"hello".start_with?("heaven", "paradise") #=> false

Array
1. first
first → obj or nil
first(n) → new_ary
Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array. See also #last for the opposite effect.

a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

2. delete_at
delete_at(index) → obj or nil
Deletes the element at the specified index, returning that element, or nil if the index is out of range.
See also #slice!

a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil

3. delete
delete(obj) → item or nil
delete(obj) { block } → item or result of block
Deletes all items from self that are equal to obj.
Returns the last deleted item, or nil if no matching item is found.
If the optional code block is given, the result of the block is returned if the item is not found. (To remove nil elements and get an informative return value, use #compact!)

a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"

4. pop
pop → obj or nil
pop(n) → new_ary
Removes the last element from self and returns it, or nil if the array is empty.
If a number n is given, returns an array of the last n elements (or less) just like array.slice!(-n, n) does. See also #push for the opposite effect.

a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

Hash
1. to_a
to_a → array
Converts hsh to a nested array of [ key, value ] arrays.

h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]

2. has_key?
has_key?(key) → true or false
Returns true if the given key is present in hsh.

h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

Note that include? and member? do not test member equality using == as do other Enumerables.
See also Enumerable#include?

3. has_value?
has_value?(value) → true or false
Returns true if the given value is present for some key in hsh.

h = { "a" => 100, "b" => 200 }
h.value?(100)   #=> true
h.value?(999)   #=> false

Time
1. now
now → time
Creates a new Time object for the current time. This is same as ::new without arguments.

Time.now            #=> 2009-06-24 12:39:54 +0900

File
1. exist?
exist?(file_name) → true or false
Return true if the named file exists.
file_name can be an IO object.
“file exists” means that stat() or fstat() system call is successful.

2. extname
extname(path) → string
Returns the extension (the portion of file name in path starting from the last period).
If path is a dotfile, or starts with a period, then the starting dot is not dealt with the start of the extension.
An empty string will also be returned when the period is the last character in path.

File.extname("test.rb")         #=> ".rb"
File.extname("a/b/d/test.rb")   #=> ".rb"
File.extname(".a/b/d/test.rb")  #=> ".rb"
File.extname("foo.")            #=> ""
File.extname("test")            #=> ""
File.extname(".profile")        #=> ""
File.extname(".profile.sh")     #=> ".sh"
