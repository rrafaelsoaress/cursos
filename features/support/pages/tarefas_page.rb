

class AdicionarPage < SitePrism::Section
    element :formulario, '.view-header'
    element :campo_nome, '#title'
    element :campo_data, '#dueDate'
    element:botao_cadastrar, '#form-submit-button'  
    
    def nova(tarefa)
        campo_nome.set tarefa[:nome]
        campo_data.set tarefa[:data]
        botao_cadastrar.click
    end
end

class TarefasPage < SitePrism::Page
    element :ola, '.panel-body h3'
    element :botao_novo, '#insert-button'
    element :campo_busca, '#search-input'
    element :botao_busca, '#search-button'

    section :adicionar, AdicionarPage, '#add-task-view'

    def busca(nome)
        campo_busca.set nome
        botao_busca.click
    end
end