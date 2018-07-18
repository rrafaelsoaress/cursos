Dado("que eu tenho uma tarefa com os seguintes atributos:") do |table|
    @tarefa = table.rows_hash
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table|
    @tag = table.hashes
  end
  
  Quando("faço o cadastro dessa tarefa") do
    @tarefas_page.botao_novo.click
    @tarefas_page.wait_for_adicionar
    @tarefas_page.adicionar.nova(@tarefa)
  end
  
  Então("devo ver está tarefa com o status {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ver somente {int} tarefa com o nome cadastrado") do |int|
    pending # Write code here that turns the phrase above into concrete actions
  end