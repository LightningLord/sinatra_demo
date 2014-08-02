class Coach
  @@database = ['jason', 'katherine', 'christine']
  def self.all
    @@database
  end

  def self.find(idx)
    @@database[idx]
  end

  def self.create(args)
    @@database << args[:coach_name]
  end
end
