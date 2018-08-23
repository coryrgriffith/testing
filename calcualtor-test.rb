require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend.to_f / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end
  describe '#subtract' do
    it 'should return the difference of the first number and the second number' do
      calculator = Calculator.new
      result = calculator.subtract(5, 4)
      expect(result).to eq(1)
    end
  end
  describe '#multiply' do
    it 'should return the product of number one and number two' do
      calculator = Calculator.new
      result = calculator.multiply(2, 3)
      expect(result).to eq(6)
    end
  end
  describe '#divide' do
    it 'should return the quotient of the dividend and the divisor' do
      calculator = Calculator.new
      result = calculator.divide(10, 2)
      expect(result).to eq(5)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(3)
      expect(result).to eq(9)
    end
  end
  describe '#power' do
    it 'should return the first number to the power of the second' do
      calculator = Calculator.new
      result = calculator.power(2, 5)
      expect(result).to eq(32)
    end
  end
end