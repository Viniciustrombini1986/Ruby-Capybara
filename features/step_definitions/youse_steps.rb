# steps Scenario tag @youse_cadastro
Given(/^que eu esteja no "([^"]*)" da youse$/) do |website|
  visit (website)
end

Given(/^clique no botao minha conta$/) do
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/div[3]/div/div[3]/div/a").click
end

Given(/^clique no link de cadasto$/) do
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/a[1]").click
end

Given(/^preencha os campos "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" e clicar em enviar cadastro$/) do |name, user, password, confirmPassword|
  fill_in 'user_name', :with => (name)
  sleep 2
  fill_in 'user_email', :with => (user)
  sleep 2
  fill_in 'user_password', :with => (password)
  sleep 2
  fill_in 'user_password_confirmation', :with => (confirmPassword)
  sleep 2
  page.find(:xpath, "//*[@id=\"new_user\"]/div/input").click
end

Then(/^o cadastro sera realizado com sucesso\.$/) do
  sleep 4
  page.find(:xpath, "//*[@id=\"container\"]/div[1]/div/div[2]")
  sleep 4
end



# steps Scenario tag @youse_cotacão

Given(/^clique em seguro residencial e validar se esta na pagina correta$/) do
  visit 'https://www.youse.com.br/seguro-residencial'
  sleep 4
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/header/section/div[2]/div[2]/a")
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/div[3]/div/div[1]/a").click
  sleep 4
end

Given(/^acesse a pagina home, clique em seguro auto e validar se esta na pagina correta$/) do
  visit 'https://www.youse.com.br/seguro-auto'
  sleep 4
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/header/section/div[2]/div[2]/a")
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/div[3]/div/div[1]/a").click
  sleep 4
end

Given(/^acesse a pagina home, clique em seguro vida e validar se esta na pagina correta$/) do
  visit 'https://www.youse.com.br/seguro-vida'
  sleep 4
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/header/section/div[2]/div[2]/a")
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/div[3]/div/div[1]/a").click
  sleep 4
end

Given(/^preencha o campo email com dado invalido e clique no botao proximo passo$/) do
  fill_in 'email', :with => 'dforptf@ertfdf.com'
  page.find(:xpath, "//*[@id=\"container\"]/div[2]/article/form/div/input").click
  sleep 2
end

Given(/^preencha o campo senha com dado invalido e clique em entrar$/) do
  fill_in 'user_password', :with => '1234qwer'
  page.find(:xpath, "//*[@id=\"new_user\"]/div/input").click
end

Then(/^devera exibir a mensagem de usuario ou senha incorreto$/) do
  page.find(:xpath, "//*[@id=\"container\"]/div[1]/div/div[2]")
end

Then(/^preencha o campo email "([^"]*)" com dado valido$/) do |userValid|
    fill_in 'user_email', :with => (userValid)
  sleep 2
end

Then(/^preencha o campo senha "([^"]*)" com dado valido e clique em entrar$/) do |passwordValid|
  fill_in 'user_password', :with => (passwordValid)
  sleep 2	
  first('input[type="submit"]').click
  sleep 2
end

Then(/^devera exibir a mensagem de login efetuado com sucesso$/) do
  page.find(:xpath, "//*[@id=\"container\"]/div[1]/div/div[2]")
  sleep 2
end

Then(/^clique no botao cotar seguro auto, preencha os campos "([^"]*)", "([^"]*)" e clique no botao sobre o veiculo$/) do |nameValid, userValid|
  visit 'https://www.youse.com.br/auto/order/new'
  fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_name', :with => (nameValid)
  sleep 2
  fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_phone', :with => '11999999999'
  sleep 2
  fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_email', :with => (userValid)
  sleep 2
  first('input[type="submit"]').click
  sleep 2
end

Then(/^selecione todos os dados referente ao veiculo e clique em proximo passo, clique em prosseguir, clique em proximo passo$/) do
  page.find(:xpath, "//*[@id=\"auto_order_flow_pricing_requirements_vehicle_attributes_make\"]/option[02]").click
  sleep 2
  page.find(:xpath, "//*[@id=\"auto_order_flow_pricing_requirements_vehicle_attributes_model\"]/option[37]").click
  sleep 2
  page.find(:xpath, "//*[@id=\"auto_order_flow_pricing_requirements_vehicle_attributes_year\"]/option[05]").click
  sleep 2
  page.find(:xpath, "//*[@id=\"auto_order_flow_pricing_requirements_vehicle_attributes_version\"]/option[02]").click
  sleep 2
  fill_in 'auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode', :with => '06040290'
  sleep 2
  page.find(:xpath, "//*[@id=\"auto_order_flow_pricing_requirements_driver_attributes_gender\"]/option[02]").click
  sleep 2
  fill_in 'auto_order_flow_pricing_requirements_driver_attributes_date_of_birth', :with => '28081986'
  sleep 2
  page.find(:xpath, "//*[@id=\"auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim\"]/option[02]").click
  sleep 2
  first('input[type="submit"]').click
  sleep 2
  first('input[type="submit"]').click
  sleep 4
  first('input[type="submit"]').click
  sleep 6
end

Then(/^preencha o campo nome completo "([^"]*)", cpf "([^"]*)", todos os campos restante e clique em proximo passo$/) do |nameValid, cpfValid|
  fill_in 'auto_order_flow_insured_person_data_insured_person_attributes_name', :with => (nameValid)
  sleep 2
  fill_in 'auto_order_flow_insured_person_data_insured_person_attributes_cpf', :with => (cpfValid)
  sleep 4
  page.find(:xpath, "//*[@id=\"auto_order_flow_insured_person_data_insured_person_attributes_occupation\"]/option[114]").click
  sleep 4
  page.find(:xpath, "//*[@id=\"auto_order_flow_insured_person_data_insured_person_attributes_salary_range\"]/option[05]").click
  sleep 2
  fill_in 'auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number', :with => '462'
  sleep 2
  first('input[type="submit"]').click
  sleep 4
end

Then(/^preencha o campo placa veiculo e clique em pagamento$/) do
  fill_in 'auto_order_flow_vehicle_data_vehicle_attributes_license_plate', :with => 'abc1234'
  sleep 2
  first('input[type="submit"]').click
  sleep 10
end

Then(/^sera apresentada a pagina de pagamento$/) do
  page.find(:xpath, "//*[@id=\"credit_card_payment_credit_card_number\"]")
end
#OBS: deixei diversos "sleeps" para ficar mais fácil de vocês acompanharem o passo a passo na hora de rodar os testes.