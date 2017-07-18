class Admin < ActiveRecord::Base
	enum role: [:full_access, :restricted_access] 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
 validates_confirmation_of :password 

 def role_desc
 	if self.role == 'full_access'
 		'Acesso Completo'
 	else
 		'Acesso Restrito'
 	end
 end
end
