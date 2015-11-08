class Coach
  @@database = ['Jason', 'Patrick', 'Sharmila', 'Danny', 'John']
  def self.all
    @@database
  end

  def self.find(idx)
    @@database[idx.to_i]
  end

  def self.create(name)
    @@database << name
  end
end
