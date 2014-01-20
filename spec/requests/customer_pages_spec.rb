require 'spec_helper'

describe "CustomerPages" do

	subject { page }

	

	describe "signup page" do
	  before  { visit signup_path }

	  it { should have_content ('Create new customer')}
	  it { should have_title(full_title('Create new customer')) }
  
  end
end
