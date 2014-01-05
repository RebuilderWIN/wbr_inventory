require 'spec_helper'

describe Customer do

	before do
		@customer = Customer.new(name: "Example Customer", email: "customer@example.com")
	end

	subject { @customer }

	it { should respond_to(:name)}
	it { should respond_to(:email)}

	it { should be_valid }


	describe "when name is not present" do
		before {@customer.name = " "}
		it { should_not be_valid }
	end

	describe "when name is too long" do
		before {@customer.name = "a" * 51}
		it { should_not be_valid }
	end

	describe "when email is not present" do
		before {@customer.email = " "}
		it { should_not be_valid }
	end

	describe "when email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
				             foo@bar_bax.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@customer.email = invalid_address
				expect(@customer).not_to be_valid
		  end
		end
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM THE_US_ER@foo.bar.org first.last@foo.jp]
			addresses.each do |valid_address|
				@customer.email = valid_address
				expect(@customer).to be_valid
		  end
		end
	end

	describe "when email address is already taken" do
		before do
			customer_with_same_email = @customer.dup
			customer_with_same_email.email = @customer.email.upcase
			customer_with_same_email.save
		end

	  it {should_not be_valid }
  end

end
