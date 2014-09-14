class Coach
  @@database = ['jason', 'katherine', 'christine']
  def self.all
    @@database
  end

  def self.find(index)
    @@database[index]
  end
end
