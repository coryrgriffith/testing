require 'rspec'

class Change_Machine
  def changer(number)
    coins = []
    while number > 0
      if number >= 25
        coins << 25
        number -= 25
      elsif number >= 10
        coins << 10
        number -= 10
      elsif number >= 5
        coins << 5
        number -= 5
      else number < 5
        coins << 1
        number -= 1
      end
    end
    return coins
  end
end



RSpec.describe Change_Machine do
  describe '#changer' do  
    it "should return [1] when the input is 1" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(1)).to eq([1])
    end
    it "should return [1, 1] for an input of 2" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(2)).to eq([1, 1])
    end
    it "should return [5] for an input of 5" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(5)).to eq([5])
    end
    it "should return [5, 1] for an input of 6" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(6)).to eq([5, 1])
    end
    it "should return [10] for an input of 10" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(10)).to eq([10])
    end
    it "should return [10, 1, 1] for an input of 12" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(12)).to eq([10, 1, 1])
    end
    it "should return [25, 25, 10, 5, 5, 1] for an input of 71" do
      change_machine = Change_Machine.new
      expect(change_machine.changer(71)).to eq([25, 25, 10, 10, 1])
    end
  end
end