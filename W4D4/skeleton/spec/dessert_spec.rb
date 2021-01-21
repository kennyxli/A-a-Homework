require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) {Dessert.new('candy', 50, "chef")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('candy')
    end
    
    it "sets a quantity" do
      expect(dessert.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
    expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new('candy', "gagj", "Frank")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    subject(:dessert) {Dessert.new('candy', 50, chef)}
    before(:each) do
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("candy")
    end
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to eq(["sugar", "candy"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"do
      expect(dessert.mix!).to_not eq(["sugar", "candy"])
    end
  end

  describe "#eat" do
    subject(:dessert) {Dessert.new('candy', 50, chef)}
    before(:each) do
      dessert.eat(5)
    end
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(45)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(50)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to eq('Chef has made 50 candies!')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(dessert.chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
