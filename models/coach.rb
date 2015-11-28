class Coach
  @@database = ['Jason', 'Jon', 'Danny']
  def self.all
    @@database
  end

  def self.find(index)
    @@database[index.to_i]
  end

  def self.create(name)
    @@database << name
  end
end
