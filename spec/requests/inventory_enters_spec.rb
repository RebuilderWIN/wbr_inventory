require 'spec_helper'

describe "InventoryEnters" do

	# let(:base_title) { "WBR Inventory"

  describe "Edit page" do

    it "should have the content 'Edit'" do
      visit edit_path
      expect(page).to have_content('Edit')
    end

		it "should have the title 'Edit'" do
      visit edit_path
       expect(page).to have_title("WBR Inventory | Edit")
     end

  end

  describe "Lookup page" do

    it "should have the content 'Lookup'" do
      visit lookup_path
      expect(page).to have_content('Lookup')
    end 

  	it "should have the title 'Lookup'" do
      visit lookup_path
      expect(page).to have_title("WBR Inventory | Lookup")
    end

  end

  describe "Display page" do

    it "should have the content 'Display'" do
      visit display_path
      expect(page).to have_content('Display')
    end

    it "should have the title 'Display'" do
      visit display_path
      expect(page).to have_title("WBR Inventory | Display")
    end

  end
end
