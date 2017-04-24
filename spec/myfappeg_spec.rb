#Capybara.default_driver = :selenium
Capybara.default_driver = :poltergeist

Capybara.app_host = "https://myfappeg.herokuapp.com"

describe "myfappeg App" do
	describe "visit root" do
		before {visit '/'}

		it "displays 'hello' (default)" do
			expect(page).to have_content 'hello'
		end

		it "displays 'The Meat We Eat' when looking_for=diet" do
			visit "courses/index?looking_for=diet"
			expect(page).to have_content 'The Meat We Eat'
		end
	end 
end