require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    before(:each) do
      # create will build and save
      # need to save if use new, can use new when you wanna set the condition before you save
      @category = Category.create
      @product = Product.create(name: 'Snowie', price: 20, quantity: 2, category: @category)
    end

    it "product should be vaild with all blank filled in" do
      expect(@product).to be_valid
    end

    it "product name should not be empty" do
      @product.name = ''
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end
    
    it "product price should not be empty" do
      @product.price_cents = nil
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "product quantity should not be empty" do
      @product.quantity = nil
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "product category should not be empty" do
      @product.category = nil
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end
end