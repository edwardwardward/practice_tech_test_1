require 'deposit'

describe Deposit do
  subject(:deposit) {described_class.new(10)}

  describe '#initialize' do

    it "has today's date" do
      expect(deposit.date).to eq Time.now.strftime("%d/%m/%Y")
    end

    it "can enter a positive amount" do
      expect(deposit.amount).to eq 10
    end

    it "throws error when given a non positive amount" do
      expect{(Deposit.new(-1))}.to raise_error "amount must be positive"
    end
  end

  describe '#set_balance' do
    it 'set balance to 10' do
      deposit.set_balance(10)
      expect(deposit.balance).to equal 10
    end
  end
end
