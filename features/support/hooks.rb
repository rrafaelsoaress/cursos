# * contém
# $ termina com
# ^ começa com

Before do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new 
    @perfil_page = PerfilPage.new
    @nav = Navbar.new
end

Before('@login') do
    @login_page.load
    @login_page.logar('eu@papito.io', '123456')
    @tarefas_page.wait_for_ola
end

After('@logout') do
    @nav.logout
end