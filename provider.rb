# -*- coding: utf-8 -*-
require 'active_record'


ActiveRecord::Base.establish_connection :adapter => "postgresql",
                                        :database => "ci320trab2",
                                        :username => "postgres",
                                        :password => "ruby" 


class Provider < ActiveRecord::Base; 
end