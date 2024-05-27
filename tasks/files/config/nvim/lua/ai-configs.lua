local sprint_status_prompt = [[Seu objetivo é gerar um resumo para as tarefas que foram realizadas durante uma sprint.
Você irá receber todas as tarefas executadas durante a sprint e deverá gerar um resumo para ser apresentado na Review Meting.

Tenha em mente que o resumo deve ser objetivo e claro, de forma que todos os membros da equipe possam entender o que foi feito.

Agrupo as tarefas por temas, e para cada tema, descreva o que foi feito e o que foi aprendido.

<tarefas>
${input}
</tarafas>

<saida>
# Slide 1 Titulo

## Grupo de tarefas 1

resumo do grupo das tarefas

## Grupo de tarefas 2

resumo do grupo das tarefas
---
# Slide 2 Titulo
</saida>

Importante que esteja claro o que foi feito e o que foi aprendido. O texto pode ser longo, se necessário, mas deve ser claro.

Revise o texto antes de enviar.]]

require'ai'.setup {
    models = {
      {
        provider = 'gemini',
        model = 'gemini-pro',
        result_tpl = 'Resultado: \n\n{{output}}',
      },
    },
    gemini = {
      api_key = os.getenv('GEMINI_API_KEY'),
    },
    locale = 'pt_br',
    alternate_locale = 'en',
    result_popup_gets_focus = false,
    prompts = {
      daily_status = {
        command = 'GenerateDailyStatus',
        loading_tpl = 'Loading...',
        prompt_tpl = 'Dado a lista de apontamentos realiados abaixo:\n\n${input}\n\nGere um resumo para ser apresentado na Daily Standup:',
        result_tpl = 'Para essas tarefas\n\n ${input}\n\nAqui está o resumo:\n\n${output}',
        require_input = true,
      },
      sprint_status = {
        command = 'GenerateSprintStatus',
        loading_tpl = 'Loading...',
        prompt_tpl = sprint_status_prompt,
        result_tpl = 'Aqui está o resumo da sprint:\n\n${output}',
        require_input = true,
      },
      execute_from_input= {
        command = 'GeminiExecutePrompt',
        loading_tpl = 'Loading...',
        prompt_tpl = '{{input}}',
        require_input = true,
      },
    },
}
