class River
  attr_reader :name,:fishes
  def initialize(name,fish)
    @name=name
    @fishes=fish


  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end

  def fish_by_name(name)
    for fish in fishes
      if name == fish.name
        return fish
      end
    end
  end


end
