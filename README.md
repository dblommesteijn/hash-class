Hash-class will extend the Hash object with `assign_if`. This function reduces the verbosity when conditionaly assigning values from element within the basic Hash object.

Like: `a = hash[:some_element] if hash.include?(:some_element)`.
Replaced by: `hash.assign_if(:some_element) {|e| a = e}`





