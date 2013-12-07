require 'spec_helper'

describe "InventoryEnters" do

	let(:base_title) { "WBR Inventory" }

  describe "Display page" do

    it "should have the content 'Display'" do
      visit '/inventory_enter/display'
      expect(page).to have_content('Display')
    end

		it "should have the title 'Display'" do
      visit '/inventory_enter/display'
      expect(page).to have_title("WBR Inventory | Display")
    end

  end

  describe "Edit page" do

    it "should have the content 'Edit'" do
      visit '/inventory_enter/edit'
      expect(page).to have_content('Edit')
    end

		it "should have the title 'Edit'" do
      visit '/inventory_enter/edit'
       expect(page).to have_title("WBR Inventory | Edit")

  end

  describe "Lookup page" do

    it "should have the content 'Lookup'" do
      visit '/inventory_enter/lookup'
      expect(page).to have_content('Lookup')
    end 

		it "should have the title 'Lookup'" do
      visit '/inventory_enter/lookup'
      expect(page).to have_title("WBR Inventory | Lookup")
    end

  end

end
