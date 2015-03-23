Hash-class will extend the Hash object with `assign_if`. This function reduces the verbosity when conditionaly assigning the value by key (within the basic Hash object).

* Like: `a = hash[:some_element] if hash.include?(:some_element)`
* Replaced by: `hash.assign_if(:some_element) {|e| a = e}`


## Usage

Add gem to your Gemfile

```bash
gem 'hash-class', github: 'dblommesteijn/hash-class'
```

## Run Tests

```bash
ruby -I test test/unit/test_hash.rb
```


