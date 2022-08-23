# No need to run this two lines of code.
require 'sqlite3'
DB = SQLite3::Database.new("db/doctors.db")

# You only need to run this line of code.
rows = DB.execute('SELECT * FROM doctors')


# If you want the id.
DB.last_insert_row_id


# Remember to put this configuration at the beggining of your file.
DB.results_as_hash = true

# So you can have results in a hash!!!✅
# => [
#      { "name" => "John Smith", "age" => 39 , 0 => "John Smith", 1 => 39 },
#      { "name" => "Emma Reale", "age" => 31 , 0 => "Emma Reale", 1 => 31 }
#    ]

# Then, for example if you want date of the first doctor:
doctor = doctors.first # => { "name" => "John Smith", "age" => 39 , 0 => "John Smith", 1 => 39 }
name_of_first_doctor = doctor["name"] # => "John Smith"
age_of_first_doctor = doctor["age"] # => 39s
