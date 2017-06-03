gem 'activerecord', '4.2.8'

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'cookbook.sqlite3')

class Recipe < ActiveRecord::Base

  field :name,         as: :string
  field :author,       as: :string
  field :prep_time,    as: :integer
  field :instructions, as: :text

end

Recipe.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end

# In IRB:
# Recipe.create name: 'Mac & Cheese', author: 'Emanuel', prep_time: 20, instructions: 'Open box and boil'
# .create creates it and saves it
# .new creates it and doesn't save it
