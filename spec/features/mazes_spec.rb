require 'rails_helper'
require 'capybara/rails'

feature 'Mazes' do
  scenario 'A user can input a maze' do
    visit '/'
    expect(page).to have_content('Welcome to the Maze Solver')
    fill_in'Maze', with: '[E**|] [|***] [|*|*] [|***] [||**]
    [*|*|] [*|||] [|**|] [*|**] [*|||]
    [*||E] [|**|] [*|**] [*|||] [|X*|]
    [|**|] [**|*] [****] [|***] [*|**]
    [**||] [|||*] [**||] [*||*] [*|||]'

    expect(page).to have_content('You have entered:')
    expect(page).to have_content('[E**|] [|***] [|*|*] [|***] [||**]
    [*|*|] [*|||] [|**|] [*|**] [*|||]
    [*||E] [|**|] [*|**] [*|||] [|X*|]
    [|**|] [**|*] [****] [|***] [*|**]
    [**||] [|||*] [**||] [*||*] [*|||]')
  end

  # scenario 'Can see the books they have entered into the database' do
  #   visit '/'
  #   click_on 'Click Here'
  #   expect(page).to have_content('Film Art: An Introduction')
  #   expect(page).to have_content('Business; Business Communication; Leadership Communication')
  #   expect(page).to have_content('152.33')
  # end
end