class Tamagachi
  @@all_tamagachi = []
  define_method(:initialize) do
    @name = name
    @food_level = 25
    @bathroom_level = 25
    @activity_level = 25
    @rest_level = 25

    @last_feed = Time.now()
    @last_bathroom = Time.now()
    @last_activity = Time.now()
    @last_rest = Time.now()

    @id = @@all_tamagachi.length()+(1)

  end

define_singleton_method(:find) do |identification|
    found_tamagachi = nil
    @@all_tamagachi.each() do |pet|
      if pet.id() == id.eql?(identification.to_i())
        found_tamagachi = pet
      end
    end
    found_pet
  end

  define_singleton_method(:all) do
  @@tamagachi
end

  define_method(:id) do
    @id
  end
  define_method(:save)do
    @@all_tamagachi.push(self)
  end

  define_singleton_method(:clear) do
    @@tamagachi = []
  end

  define_method(:food) do
    @food_level
  end

  define_method(:bathroom) do
    @bathroom_level
  end

  define_method(:activity) do
    @activity_level
  end

  define_method(:rest) do
    @rest_level
  end

  define_method(:is_alive?)do
    if @food > 0 && @bathroom > 0 && @activity > 0 && @rest > 0
     true
   else
     false
  end

  define_method(:food_timer) do
    if is_alive?()
      @food_level += 1
    end
  end

  define_method(:start_timer) do
    @last_feed = Time.now()
    @last_bathroom = Time.now()
    @last_activity = Time.now()
    @last_rest = Time.now()
  end

  define_method(:time_passes_feed) do
    Time.now()-@last_feed.floor.times do
      @food_level -= 1
      @rest_level -= 1
      @bathroom_level -= 1
      @activity_level -= 1
    end
  end
end
end
