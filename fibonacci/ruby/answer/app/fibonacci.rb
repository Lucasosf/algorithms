class Fibonacci
  class << self
    def generate(numbers = 10)
      serie = []
      serie << 0 << 1

      while serie.size < numbers
        serie << (serie[serie.size-2] + serie.last)
      end

      serie
    end
  end
end
