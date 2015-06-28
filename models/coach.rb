class Coach

  @@coaches = ['danny', 'john', 'jason', 'sharmila']

  def self.all
    @@coaches
  end

  def self.find(idx)
    @@coaches[idx.to_i]
  end

  def self.create(name)
    @@coaches << name
  end
end
