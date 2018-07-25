

class AdicionarPage < SitePrism::Section
    element :formulario, '.view-header'
    element :campo_nome, '#title'
    element :campo_data, '#dueDate'
    element :campo_tags, '.bootstrap-tagsinput input'
    element :botao_cadastrar, '#form-submit-button'
    element :alerta, '.alert-warn'
        
    def nova(tarefa, tags)
        campo_nome.set tarefa[:nome]
        campo_data.set tarefa[:data]
        tags.each do |t|
            campo_tags.set t[:tag]
            campo_tags.send_keys :tab
        end
        botao_cadastrar.click
    end
end

class TarefasPage < SitePrism::Page
    set_url '/tasks'
    element :ola, '.panel-body h3'
    element :botao_novo, '#insert-button'
    element :campo_busca, '#search-input'
    element :botao_busca, '#search-button'
    # element :botao_deletar, '#delete-button'
    

    section :adicionar, AdicionarPage, '#add-task-view'

    def busca(nome)
        campo_busca.set nome
        botao_busca.click
    end
end