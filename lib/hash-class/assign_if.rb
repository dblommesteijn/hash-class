module HashClass
  module AssignIf

    # lookup element and return value if exists
    def assign_if(*opts, &block)
      if opts.is_a?(Array)
        el = opts.first
        if block.is_a?(Proc)
          return block.call(self[el]) if self.include?(el)
        end
      end
    end

  end
end

# attach to Hash
Hash.send :include, HashClass::AssignIf
