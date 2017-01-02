# -*- coding: utf-8 -*-

require_relative 'pessoas'
require_relative 'car'
require_relative 'enterprise'
require_relative 'provider'
require_relative 'enterprise_provider'

# Para demonstrar como acessar estes atributos, vamos a alguns exemplos:

# Formas de inserir informação no banco de dados. 
# Método 1: campo a campo.

#Populate pessoas
p = Pessoa.new()
p.last_name  = "Hansen"
p.first_name = "Ola"
p.address    = "Timoteivn 10"
p.city       = "Sandnes"
p.car_id     = 10
p.enterprise_id = 2
p.save()

# Método 1: em um único comando.
p = Pessoa.new(:last_name  => "Svendson", 
               :first_name => "Tove",
               :address    => "Borgvn 23",
               :city       => "Sandnes",
               :car_id     => 3,
               :enterprise_id => 1)
p.save()

p = Pessoa.new(:last_name  => "Pettersen", 
               :first_name => "Kari",
               :address    => "Storgt 20",
               :city       => "Stavanger",
               :car_id     => 4,
               :enterprise_id => 3)
p.save()

p = Pessoa.new(:last_name => 'Karyn', 
				:first_name => 'Gregory', 
				:address => 'P.O. Box 238, 3625 Suspendisse Rd.', 
				:city => 'Outremont',
				:car_id     => 2,
				:enterprise_id => 2)
p.save()

p = Pessoa.new(:last_name => 'Valentine', :first_name => 'Risa', :address => 'P.O. Box 220, 7821 Mauris St.', :city => 'Saint-Laurent', :car_id     => 1, :enterprise_id => 3)
p.save()

p = Pessoa.new(:last_name => 'Abra', :first_name => 'Dillon', :address => '1344 Mollis. Avenue', :city => 'San Felice a Cancello', :car_id     => 9, :enterprise_id => 2)
p.save()

p = Pessoa.new(:last_name => 'Savannah', :first_name => 'Jin', :address => '111-9010 In, Road', :city => 'Buckley', :car_id     => 6, :enterprise_id => 1)
p.save()

p = Pessoa.new(:last_name => 'Amity', :first_name => 'Dustin', :address => '986-4527 Cursus Avenue', :city => 'Campotosto', :car_id     => 7, :enterprise_id => 2)
p.save()

p = Pessoa.new(:last_name => 'Laura', :first_name => 'Shaine', :address => 'Ap #612-7726 Justo St.', :city => 'São Luís', :car_id     => 8, :enterprise_id => 3)
p.save()

p = Pessoa.new(:last_name => 'Dolan', :first_name => 'Xerxes', :address => '709-1001 Nullam Ave', :city => 'Bolsward', :car_id     => 5, :enterprise_id => 1)
p.save()

#populate cars
c = Car.new(:name => 'Karyn', :color => 'Gregory', :year => 'P.O. Box 238, 3625 Suspendisse Rd.', :brand => 'Outremont')
c.save()

c = Car.new(:name => 'Valentine', :color => 'Risa', :year => 'P.O. Box 220, 7821 Mauris St.', :brand => 'Saint-Laurent')
c.save()

c = Car.new(:name => 'Abra', :color => 'Dillon', :year => '1344 Mollis. Avenue', :brand => 'San Felice a Cancello')
c.save()

c = Car.new(:name => 'Savannah', :color => 'Jin', :year => '111-9010 In, Road', :brand => 'Buckley')
c.save()

c = Car.new(:name => 'Amity', :color => 'Dustin', :year => '986-4527 Cursus Avenue', :brand => 'Campotosto')
c.save()

c = Car.new(:name => 'Laura', :color => 'Shaine', :year => 'Ap #612-7726 Justo St.', :brand => 'São Luís')
c.save()

c = Car.new(:name => 'Dolan', :color => 'Xerxes', :year => '709-1001 Nullam Ave', :brand => 'Bolsward')
c.save()

c = Car.new(:name => 'Karyn', :color => 'Gregory', :year => 'P.O. Box 238, 3625 Suspendisse Rd.', :brand => 'Outremont')
c.save()

c = Car.new(:name => 'Valentine', :color => 'Risa', :year => 'P.O. Box 220, 7821 Mauris St.', :brand => 'Saint-Laurent')
c.save()

c = Car.new(:name => 'Abra', :color => 'Dillon', :year => '1344 Mollis. Avenue', :brand => 'San Felice a Cancello')
c.save()

#populate enterprises
e = Enterprise.new(:name => 'Paloma', :CNPJ => '20371', :logo => 'Purus Maecenas Libero Associates', :address => '7805 Tincidunt, St.', :num_employees => '41782')
e.save()

e = Enterprise.new(:name => 'Gregory', :CNPJ => '06899', :logo => 'Accumsan Neque Consulting', :address => 'Ap #428-9456 Cursus Rd.', :num_employees => '63168')
e.save()

e = Enterprise.new(:name => 'Gay', :CNPJ => '46499', :logo => 'Aliquet Metus Urna Company', :address => 'P.O. Box 914, 4062 Arcu. Rd.', :num_employees => '41103')
e.save()

#populate providers
pr = Provider.new(:name => 'Edward', :CNPJ => '01510', :product => 'Lowe', :address => '376-3611 Velit. Rd.')
pr.save()

pr = Provider.new(:name => 'Cooper', :CNPJ => '00192', :product => 'Brown', :address => '143-2583 Sagittis Av.')
pr.save()

pr = Provider.new(:name => 'Kyra', :CNPJ => '42577', :product => 'Boyd', :address => '358 Imperdiet Av.')
pr.save()

pr = Provider.new(:name => 'Octavius', :CNPJ => '66053', :product => 'Odonnell', :address => '8139 Elit Road')
pr.save()

pr = Provider.new(:name => 'Kelsey', :CNPJ => '19119', :product => 'Bush', :address => '1901 Diam Av.')
pr.save()

#populate providers
epr = EnterprisesProvider.new(:enterprise_id => 3, :provider_id => 5)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 2, :provider_id => 4)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 1, :provider_id => 2)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 1, :provider_id => 1)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 3, :provider_id => 3)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 2, :provider_id => 3)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 3, :provider_id => 2)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 2, :provider_id => 4)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 1, :provider_id => 5)
epr.save()

epr = EnterprisesProvider.new(:enterprise_id => 2, :provider_id => 1)
epr.save()