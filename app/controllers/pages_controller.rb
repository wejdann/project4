class PagesController < ApplicationController
  def home
    @msg1= 'Talent Support Site'
    
  end

  def about
    @msg2 = 'About us'
  end
end
