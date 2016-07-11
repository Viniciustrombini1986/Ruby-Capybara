Given(/^I on the extra "([^"]*)"$/) do |website| 
  visit (website)
end

Given(/^click the button to enter$/) do
  click_on 'lnkCadastreSe'
end

Given(/^fill in the email field "([^"]*)"$/) do |email|
  sleep 2
  fill_in 'Email', :with => (email)
  sleep 2
end
  
Given(/^fill in the password field "([^"]*)"$/) do |password|
  sleep 2
  fill_in 'Senha', :with => (password)
  sleep 2
end
  
Given(/^click the login button$/) do
  click_on 'btnClienteLogin'
sleep 2
end
  
Then(/^the login must be carried through successfully$/) do

end

Then(/^fill out the look with "([^"]*)" and click the button search$/) do |searchedTerm|
  sleep 2
  fill_in 'ctl00_TopBar_PaginaSistemaArea1_ctl33_txtBusca', :with => (searchedTerm) 
  sleep 2
  click_button 'ctl00_TopBar_PaginaSistemaArea1_ctl33_btnOK'
  sleep 2
end
  
Then(/^on the screen with the results click on a search item, validate the item screen correctly opened$/) do
  sleep 2
  visit 'http://www.extra.com.br/automotivo/PneusRodasCalotas/Pneus/Pneu-Aro-13-Altimax-General-Tire-RT-175-70-R13-82T-3596181.html?IdProduto=1238305&recsource=btermo'
  sleep 2
end

Then(/^add the item to the cart, validate if the item was added correctly$/) do
 sleep 2
 click_on 'btnAdicionarCarrinho'
 sleep 4
end

#OBS: deixei diversos "sleeps" para ficar mais fácil de vocês acompanharem o passo a passo na hora de rodar os testes.