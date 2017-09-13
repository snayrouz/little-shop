require 'rails_helper'

RSpec.feature "User visits a category show page" do
  it "sees all items for that category" do
    category = create(:category, name: 'Scuba')
    item1 = create(:item, title: 'Sassafrass')
    item2 = create(:item, title: 'Milkduds')
    category.items << [item1, item2]

    visit "/#{category.name}"

    expect(page).to have_content category.name
    expect(page).to have_content item1.title
    expect(page).to have_content item1.price
    expect(page).to have_css("img[src='#{item1.image}']")
    expect(page).to have_content item2.title
  end
end
