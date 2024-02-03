puts "Criando registros de inteligências artificiais..."

ia_criada = false
chat_gpt = InteligenciaArtificial.find_or_create_by(nome: 'ChatGPT') do |ia|
  ia.descricao = 'ChatGPT é um modelo de linguagem baseado na arquitetura GPT (Generative Pre-trained Transformer) desenvolvido pela OpenAI. É capaz de compreender e gerar texto natural, permitindo conversações ricas e contextuais. É amplamente utilizado para tarefas como geração de texto, conversação, e respostas a perguntas.'
  ia.url_image = 'PENDENTE'
  ia.categoria = 'Modelo de linguagem'
  ia.tecnologia = 'GPT-4.0'
  ia.data_criacao = '2020-06-11'
  ia.desenvolvedor = 'OpenAI'
  ia.url_documentacao = 'https://platform.openai.com/docs/'
  ia.url_repositorio = 'N/A'
  ia.avaliacao_media = 4.8
  ia.contagem_avaliacoes = 1000
  ia_criada = "Inteligência artificial ChatGPT criada com sucesso!"
  puts ia_criada
end

bard = InteligenciaArtificial.find_or_create_by(nome: 'BARD') do |ia|
  ia.descricao = 'Bard é um modelo de linguagem do Google AI que pode gerar texto, traduzir idiomas, escrever conteúdo criativo e responder perguntas de forma informativa.'
  ia.url_image = 'PENDENTE'
  ia.categoria = 'Modelo de linguagem'
  ia.tecnologia = 'Gemini Pro'
  ia.data_criacao = '2021-01-01'
  ia.desenvolvedor = 'Google AI'
  ia.url_documentacao = ''
  ia.url_repositorio = 'n/a'
  ia.avaliacao_media = 4.5
  ia.contagem_avaliacoes = 500
  ia_criada = "Inteligência artificial BARD criada com sucesso!"
  puts ia_criada
end

if !ia_criada
   puts "Nenhuma inteligência artificial foi criada, pois elas já existem no banco de dados.\nIsso foi feito para evitar duplicidade de registros."
end 