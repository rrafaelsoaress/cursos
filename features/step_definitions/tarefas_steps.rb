Dado("que eu tenho uma tarefa com os seguintes atributos:") do |table|
    @tarefa = table.rows_hash
    DAO.new.deleta_tarefa(@tarefa[:nome])
  end
  
  Dado("eu quero taguear esta tarefa com:") do |table|
    @tag = table.hashes
  end
  
  Quando("faço o cadastro dessa tarefa") do
    @tarefas_page.botao_novo.click
    @tarefas_page.wait_for_adicionar
    @tarefas_page.adicionar.nova(@tarefa)
  end
  
  Então("devo ver esta tarefa com o status {string}") do |status_tarefa|
    tarefa_encontrada = find('#tasks tbody tr', text: @tarefa[:nome])
    expect(tarefa_encontrada).to have_content status_tarefa
  end
  
  Então("devo ver somente {int} tarefa com o nome cadastrado") do |quantidade|
    @tarefas_page.busca(@tarefa[:nome])
    registros = all('#tasks tbody tr')
    expect(registros.size).to eql quantidade
  end