# Custom map method - "Ruby Open Classes"
class Array
  def my_map
    return to_enum :my_map unless block_given?

    dup_array = []

    each { |e| dup_array << yield(e) }

    dup_array
  end
end
