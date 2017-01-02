# -*- coding: utf-8 -*-
require 'active_record'

# Só execute este programa depois de criar o banco de dados (ruby
# criaSchema.rb)

# Este exemplo só tem dois "parâmetros" (adapter e database). Porém,
# existem outros: (host, username, password), que podem ser usados com
# outros bancos de dados.
ActiveRecord::Base.establish_connection :adapter => "postgresql",
                                        :database => "ci320trab2",
                                        :username => "postgres",
                                        :password => "ruby" 


class Pessoa < ActiveRecord::Base; 
	belongs_to    :car
	belongs_to    :enterprise
end

# O bacana aqui é que não foram declarados os atributos da classe
# Pessoa. Para isto, o ActiveRecord vai até o banco de dados, procura
# pelos atributos daquela tabela e automaticamente as "insere" como
# atributos da classe.

=begin

1x1 (Pessoa Profissão)
1xn (Pessoa Sapatos)
nxn (Pessoa Casa)

class Profissao <  ActiveRecord::Base; 
  belongs_to :pessoa
end

class Sapato < ActiveRecord::Base; 
  belongs_to :pessoa
end

class Casa  < ActiveRecord::Base; 
   has_and_belongs_to_many :pessoas
end

class Pessoa < ActiveRecord::Base; 
  has_one  :profissao
  has_many :sapatos
  has_and_belongs_to_many :casas

end


=end
