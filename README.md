# Teste Prático - Sistema de Gerenciamento de Tarefas

## Objetivo

Este repositório contém um sistema de gerenciamento de tarefas (TODO list) desenvolvido em Rails 8. O sistema está funcional, porém possui alguns problemas que precisam ser corrigidos e uma funcionalidade que precisa ser implementada.

## Setup do Projeto

### Requisitos
- Ruby 3.2+
- Rails 8.0+
- SQLite3

### Instalação

```bash
# Instalar dependências
bundle install

# Criar e configurar banco de dados
rails db:create
rails db:migrate
rails db:seed

# Iniciar servidor
rails server
```

Acesse: http://localhost:3000

## Tarefas do Teste

Você deve resolver as tarefas na ordem apresentada. Faça commits separados para cada tarefa resolvida.

### Tarefa 1: Estilo para Tarefas Concluídas (Fácil)

**Problema:** Tarefas marcadas como concluídas não possuem diferenciação visual na listagem.

**Requisito:** Implementar estilo CSS para que tarefas concluídas apareçam:
- Com texto riscado (text-decoration: line-through)
- Com opacidade reduzida
- Com cor de texto mais clara

**Onde verificar:** Página inicial - marque algumas tarefas como concluídas usando o botão circular.

---

### Tarefa 2: Corrigir Layout Quebrado (Médio)

**Problema:** A página de visualização de uma tarefa individual está com o layout quebrado.

**Requisito:** Identificar e corrigir o problema que está causando o desalinhamento dos elementos.

**Onde verificar:** Clique em qualquer tarefa na listagem para ver os detalhes.

---

### Tarefa 3: Corrigir Checkbox de Tarefa Concluída (Médio)

**Problema:** O checkbox "Tarefa concluída" no formulário de edição não está funcionando.

**Como reproduzir:**
1. Clique em "Editar" em qualquer tarefa
2. Marque/desmarque o checkbox "Tarefa concluída"
3. Salve o formulário
4. O status não é alterado

**Requisito:** Fazer o checkbox funcionar corretamente ao editar tarefas.

---

### Tarefa 4: Implementar Ordenação de Tarefas (Difícil)

**Problema:** As tarefas estão sendo exibidas apenas por ordem de criação.

**Requisito:** Modificar a listagem para:
1. Mostrar tarefas pendentes primeiro
2. Mostrar tarefas concluídas depois
3. Dentro de cada grupo, manter ordenação por data de criação (mais recentes primeiro)

---

### Tarefa 5: Implementar Filtros (Nova Funcionalidade)

**Requisito:** Adicionar sistema de filtros na página inicial.

Implementar:

1. **Filtro por Status**
   - Opções: Todas, Pendentes, Concluídas
   - Pode ser implementado com radio buttons ou select

2. **Filtro por Prioridade**
   - Todas as prioridades
   - Baixa (1-2 estrelas)
   - Média (3 estrelas)  
   - Alta (4-5 estrelas)

**Observações:**
- Os filtros devem funcionar via parâmetros na URL
- Os filtros devem funcionar em conjunto (ex: mostrar apenas tarefas pendentes de alta prioridade)
- Adicionar os controles de filtro acima da tabela/listagem

## Estrutura do Projeto

```
app/
├── controllers/
│   └── tasks_controller.rb
├── models/
│   └── task.rb
├── views/
│   └── tasks/
│       ├── index.html.erb
│       ├── show.html.erb
│       ├── new.html.erb
│       ├── edit.html.erb
│       └── _form.html.erb
└── assets/
    └── stylesheets/
        └── tasks.css
```

## Critérios de Avaliação

- **Funcionamento correto** das correções e implementações
- **Qualidade do código** (clareza, organização, boas práticas)
- **Commits organizados** (um commit por tarefa, mensagens descritivas)
- **Atenção aos detalhes** visuais e de usabilidade

## Observações Importantes

1. Resolva as tarefas em ordem
2. Se não conseguir resolver alguma tarefa, pule para a próxima
3. Você pode refatorar código existente se julgar necessário
4. Pode adicionar gems se necessário, justificando no commit
5. Teste bem cada correção antes de fazer o commit

## Entrega

1. Crie uma branch para cada tarefa: `git checkout -b tarefa-1`
2. Para cada tarefa resolvida:
   - Faça um commit descritivo
   - Abra um Pull Request individual para a tarefa
   - **Não faça merge** - deixe o PR aberto para avaliação
3. Ao final, você terá 5 PRs abertos, um para cada tarefa

---

Boa sorte!
