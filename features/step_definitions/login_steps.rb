Dado("que eu acessei o sistema") do
  visit 'https://mark7.herokuapp.com'
end

Quando("faço login com {string} e {string}") do |email, senha|
  @login_page = LoginPage.new
  @login_page.wait_for_formulario
  @login_page.logar(email, senha)
end

Então("vejo a seguinte mensagem {string}") do |mensagem|
  ola = find('.panel-body h3')  
  expect(ola).to have_content mensagem
end

Então("vejo a seguinte mensagem de alerta {string}") do |mensagem|
  alerta = find('.alert-login')  
  expect(alerta.text).to eql mensagem
end