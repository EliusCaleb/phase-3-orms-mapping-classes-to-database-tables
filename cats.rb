

class Cat

    @@all = []
  
    attr_reader :name, :breed, :age
  
    def initialize(name, breed, age)
      @name = name
      @breed = breed
      @age = age
      @@all << self
    end
  
    def self.all
      @@all
    end

  
    def save(database_connection)
       ##code here 
       #cats
       database_connection.execute("INSERT INTO cats(name,breed,age) VALUES(?,?,?)" ,self.name,self.breed,self.age)
    #    database_connection.execute("CREATE TABLE IF NOT EXISTS 
    #     cats( id INTEGER PRIMARY KEY
    #         name TEXT
    #         breed TEXT
    #         age INTEGER)")
    #         database_connection.execute("CREATE TABLE IF NOT EXISTS 
    #             owner( id INTEGER PRIMARY KEY
    #                 name TEXT
                    
    #             )")

    end

    

end


database_connection = SQLite3::Database.new('db/pets.db')
linda = Cat.new("Maru","scottish fold" 6)

# database_connection.execute("INSERT INTO cats (name, breed, age) VALUES ('Maru',
# 'scottish fold', 3)")
# #Cat.new("Hana", "tortoiseshell", 1)


# database_connection.execute("INSERT INTO cats (name, breed, age) VALUES ('Hana',
# 'tortoiseshell', 1)")






















#database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)", self.name, self.breed, self.age)
# Cat.new("Maru", "scottish fold", 3)
# Cat.new("Hana", "tortoiseshell", 1)

# Cat.all.each do |cat|
#   cat.save(database_connection)
# end
