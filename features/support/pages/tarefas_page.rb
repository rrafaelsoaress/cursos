require 'faker'

class AdicionarPage < SitePrism::Section
    element :formulario, '.view-header'
    element :campo_nome, '#title'
    element :campo_data, '#dueDate'
    element:botao_cadastrar, '#form-submit-button'  
    
    def nova(tarefa)
        campo_nome.set tarefa[:nome] + ' ' + Faker::Lorem.characters(5)
        campo_data.set tarefa[:data]
        botao_cadastrar.click
    end
end

class TarefasPage < SitePrism::Page
    element :ola, '.panel-body h3'
    element :botao_novo, '#insert-button'

    section :adicionar, AdicionarPage, '#add-task-view'
end