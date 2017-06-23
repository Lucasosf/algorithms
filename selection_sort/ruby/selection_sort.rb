class SelectionSort
  def self.sort(list)
    size = list.size - 1

    size.times do |i|
      (i + 1).upto(size) do |j|
        # swap values
        list[i], list[j] = list[j], list[i] if list[i] > list[j]
      end
    end

    list
  end
end
