require 'pry'

module PartyGoer

  attr_accessor :drink
  def initialize
    @drink = 0
  end

  def drink
    @drink += 1
    if @drink < 3
      return true
    else
      return false
    end
  end

  def sing
    "lalalalalallala"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
    base.extend(Invited)
  end

  module Invited
    def invited?
      true
    end
  end

end

class Launcher
end

class PersonalizedHavocError < StandardError
end
