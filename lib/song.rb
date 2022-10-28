class Song

  attr_accessor :name, :album, :id

  def initialize(name:, album:, id: nil)
    @id = id 
    @name = name
    @album = album
  end


  # create a table   pry data data Song.create_table
    #insert to db
  def self.create_table
    ### here doc 
    sql = <<-SQL
      CREATE TABLE  IF  NOT EXISTS songs(
        id INTEGER PRIMARY KEY,
        name TEXT,
         album TEXT
      )

    SQL
     DB[:conn].execute(sql)

  end


  def save 
    sql = <<-SQL
    INSERT INTO songs(name,album) VALUES(?,?)
    SQL
   DB[:conn].execute(sql,self.name,self.album)
    

  self.id= DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]

  self
  end
   

    def self.create(name:,album:)
      song = Song.new(name:name,album:album)
      song.save
    end
    
end










    
  
   
  
  
   
  # ninety_nine_problems = Song.new(name: "99 Problems", album: "The Black Album")
  # gold_digger = Song.new(name: "Gold Digger", album: "Late Registration")
  # hello = Song.new(name: "Hello", album: "25")
    
  # def save 
    
  # end

  

    
  


  
    
    
  
 
      
# song = Song.create(name: "Hello", album: "25")
#ninety_nine_problems = Song.create(name: "99 Problems", album: "The Black Album")
#gold_digger = Song.new(name: "Gold Digger", album: "Late Registration")

