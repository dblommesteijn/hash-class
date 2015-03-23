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
    # hs.assign_if(:a) { |v| a = v }
    a = hs.assign_if(&:a)
    assert a == 1
    # hs.assign_if(:b) { |v| b = v }
    # assert b == 2
    # hs.assign_if(:c) { |v| c = v }
    # assert c == 3
    # hash notation
    # a,b,c = nil
    # hs.assign_if(a: a)
    # assert a == 1
    # hs.assign_if(b: b)
    # assert b == 2
    # hs.assign_if(c: c)
    # assert c == 3
  end

  # def test_assign_if_overwrite
  #   hs = {a: 1, b: 2, c: 3}
  #   # block notation
  #   d,e,f = 4,5,6
  #   hs.assign_if(:d) { |v| d = v }
  #   assert d == 4
  #   hs.assign_if(:e) { |v| e = v }
  #   assert e == 5
  #   hs.assign_if(:f) { |v| f = v }
  #   assert f == 6
  #   # hash notation
  #   # d,e,f = nil
  #   # hs.assign_if(d: d)
  #   # assert d.nil?
  #   # hs.assign_if(e: e)
  #   # assert e.nil?
  #   # hs.assign_if(f: f)
  #   # assert f.nil?
  # end

  # def test_assign_if_overwrite
  #   hs = {a: 1, b: 2, c: 3}

  #   d,e,f = 4,5,6
  #   hs.assign_if(:d) { |v| d = v }
  #   assert d == 4
  #   hs.assign_if(:e) { |v| e = v }
  #   assert e == 5
  #   hs.assign_if(:f) { |v| f = v }
  #   assert f == 6
  #   # # set new values for unset variables
  #   # g,h,i = nil
  #   # hs.assign_if(:g) { |v| g = v }
  #   # assert i ==
  #   # hs.assign_if(:h) { |v| h = v }
  #   # hs.assign_if(:i) { |v| i = v }
  # end
end
