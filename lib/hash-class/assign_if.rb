module HashClass
  module AssignIf

    # lookup element and return value if exists
    def assign_if(&block)
      # puts options
      block.call(self)
      # if not options.is_a?(Hash)
      #   el = options.first
      #   block.call(self[el]) if self.include?(el)
      # end
    end

    def method_missing(m, *args, &block)
      self[m]
      # puts args
      # puts block
    end

    # def a(*opts)
    #   puts self
    # end

  end
end

# attach to Hash
Hash.send :include, HashClass::AssignIf
