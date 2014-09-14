class Coach
  @@database = ['jason', 'katherine', 'christine']
  def self.all
    @@database
  end

  def self.find(index)
    @@database[index]
  end

  def self.create(name)
    @@database << name
  end

  def self.get_id(name)
    @@database.index(name)
  end

  def self.update(options = {})
    @@database[options[:id].to_i] = options[:name]
  end
end
