require 'rails_helper'

RSpec.describe 'ingredients/index', type: :feature do
  let!(:noodles) { Ingredient.create!(name: "Noodles", cost: 2) }
  let!(:tomato) { Ingredient.create!(name: "Tomato", cost: 1) }

  it ' lists all the ingredients including name and cost' do

    visit '/ingredients'

    expect(page).to have_content(noodles.name)
    expect(page).to have_content(noodles.cost)
    expect(page).to have_content(tomato.name)
    expect(page).to have_content(tomato.cost)
  end
end