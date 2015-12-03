Hash-class will extend the Hash object with `assign_if`. This function reduces the verbosity when conditionaly assigning the value by key (within the basic Hash object).

**Example:**

```ruby
# old
a = hash[:some_element] if hash.include?(:some_element)
# new
hash.assign_if(:some_element) {|e| a = e}
```

**Logic**

Block `{|e| a = e}` is yielded when key `:some_element` in `hash` is found. `e` contains the value of key `:some_element`.
*NOTE: When the key is not found, the block is not yielded!*


## Usage

**Add gem to your Gemfile**

```bash
gem 'hash-class', github: 'dblommesteijn/hash-class'
```

**Use as standalone gem**

```bash
gem install specific_install
gem specific_install https://github.com/dblommesteijn/hash-class
```

### Code snippet

```bash
require 'hash-class'
a = 123
hash = {}
hash.assign_if(:some_element) {|e| a = e}
```

## Run Tests

```bash
ruby -I test test/unit/test_hash.rb
```


