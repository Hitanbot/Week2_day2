class Bear
  attr_reader :name, :type,:stomache
  def initialize(name,type)
    @name=name
    @type=type
    @stomache=[]


  end


  def roar()
    return "raawr"
  end

  def take_fish(river,fish_name)
    fish=river.fish_by_name(fish_name)
    @stomache.push(fish)
    river.remove_fish(fish)

  end

  def food_count()
    return @stomache.length
  end


end
