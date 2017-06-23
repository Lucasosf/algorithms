class MergeSort
  def self.sort(list)
    return list if list.size == 1

    left = list.take(list.size / 2)
    right = list.drop(list.size / 2)

    sorted_left = sort(left)
    sorted_right = sort(right)

    merge(sorted_left, sorted_right)
  end

  def self.merge(left, right)
    sorted = []

    until left.empty? || right.empty?
      sorted << if left.first <= right.first
                  left.shift
      else
        right.shift
      end
    end

    sorted + left + right
  end
end
