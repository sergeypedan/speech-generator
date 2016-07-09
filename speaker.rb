class Speaker

  def initialize(speach_components)
    @speach_components = speach_components
  end

  def say_sentence
    sentence(@speach_components)
  end

  private

  def sentence(speach_components)
    components = ( 1..speach_components.count ).map { |i| speach_components[ i - 1] }
    parts = components.map { |component_variants| random_from component_variants }
    parts.join(" ") + "."
  end

  def random_from(array)
    raise ArgumentError.new "Nil passed to `random_from`"         if array == nil
    raise ArgumentError.new "Empty array passed to `random_from`" if array == []

    index = rand( array.count )
    array[index]
  end

end
