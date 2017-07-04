class QuickSort
  def self.sort(list)
    return list if list.size <= 1

    pivot = list[rand(list.size)]

    left = []
    right = []

    list.each do |item|
      if item > pivot
        right.push(item)
      else
        left.push(item)
      end
    end

    sort(left) + sort(right)
  end
end
