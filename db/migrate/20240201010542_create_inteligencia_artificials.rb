class CreateInteligenciaArtificials < ActiveRecord::Migration[7.1]
  def change
    create_table :inteligencia_artificials do |t|
      t.string :nome
      t.text :descricao
      t.string :url_image
      t.string :categoria
      t.string :tecnologia
      t.date :data_criacao
      t.string :desenvolvedor
      t.string :url_documentacao
      t.string :url_repositorio
      t.float :avaliacao_media
      t.integer :contagem_avaliacoes

      t.timestamps
    end
  end
end
