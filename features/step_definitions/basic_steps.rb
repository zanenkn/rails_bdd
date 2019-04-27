Given("the following articles exists") do |table|
    table.hashes.each do |article|
        Article.create!(article)
    end
end

When("I visit the site") do
    visit root_path
end

And("I click {string} link") do |link|
    click_link link
end

Given("I should be on New Article page") do
    visit new_article_path  
end

When("I fill in {string} with {string}") do |field, data|
    fill_in field, with: data
end

And("I click {string} button") do |btn|
    click_button btn
end

