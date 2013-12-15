require 'spec_helper'

describe "Inventory Enters" do

	subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content ('WBR Inventory') }
    it { should have_title(full_title('')) }
  end


  describe "Edit page" do
    before { visit edit_path}
    
    it { should have_content ('Edit') }
    it { should have_title(full_title('Edit')) }
  end


  
  describe "Display page" do
    before { visit display_path }

    it { should have_content ('Display') }
    it { should have_title(full_title('Display')) }
  end

 
end
