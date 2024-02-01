class InteligenciaArtificial < ApplicationRecord
    validates :nome, :descricao, :url_image, presence: true
end