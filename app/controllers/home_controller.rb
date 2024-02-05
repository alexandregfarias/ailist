class HomeController < ApplicationController
  def index
    @bard = InteligenciaArtificial.find_by(nome: 'BARD')
    @gpt = InteligenciaArtificial.find_by(nome: 'ChatGPT')
  end
end
