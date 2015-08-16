class Coach
  @@database = ['jason', 'patrick', 'jon', 'christine']
  def self.all
    #returns all coaches
    @@database
  end
  #return one coach by id(index)
  def self.find(id)
    @@database[id.to_i]
  end

  def self.create(options = {})
    @@database << options[:name]
  end
end
