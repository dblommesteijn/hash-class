require 'test_helper'

class TestHash < Test::Unit::TestCase

  def setup
  end

  def teardown
  end

  def test_assign_if_empty
    # assert false, "not implemented!"
    hs = {a: 1, b: 2, c: 3}
    # block notation
    a,b,c = nil
    hs.assign_if(:a) { |v| a = v }
    assert a == 1
    hs.assign_if(:b) { |v| b = v }
    assert b == 2
    hs.assign_if(:c) { |v| c = v }
    assert c == 3
  end

  def test_assign_if_overwrite
    hs = {a: 1, b: 2, c: 3}
    # block notation
    d,e,f = 4,5,6
    hs.assign_if(:d) { |v| d = v }
    assert d == 4
    hs.assign_if(:e) { |v| e = v }
    assert e == 5
    hs.assign_if(:f) { |v| f = v }
    assert f == 6
  end

end
