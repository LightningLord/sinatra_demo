class Coach
  #nothing on this file matters
  @@database = ['jason', 'erica', 'hannah']
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
