Dado("que eu acesse o site") do
    visit 'http://www.appanamaria.com.br'
  end
  
  Quando("clicar em Ajuda") do
    all('footer a[href$=ajuda]').first.click
  end
  
  Então("sou direcionado para a rota certa") do
    pending # Write code here that turns the phrase above into concrete actions
  end