class Coach
  @@database = ['jason', 'catie', 'john', 'james', 'ryan']
  def self.all
    @@database
  end

  def self.find(index)
    @@database[index.to_i]
  end

  def self.create(new_coach_name)
    @@database << new_coach_name
  end
end
