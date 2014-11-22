class PawsController < ApplicationController
  def index
    response = HTTParty.get('http://www.petango.com/webservices/adoptablesearch/wsAdoptableAnimals.aspx?species=Dog&sex=A&agegroup=All&location=&site=&onhold=N&orderby=Name&colnum=2&css=http://www.petango.com/WebServices/adoptablesearch/css/styles.css&authkey=6zl6u381k1164ci4pr60263j64az7071209ra01r0kfvgl920n&recAmount=100&detailsInPopup=Yes&featuredPet=Include&stageID=')
    @profile = Nokogiri::HTML(response.body)
  end

  def dog
    @animal_id = params[:id]
    api = "http://www.petango.com/webservices/adoptablesearch/wsAdoptableAnimalDetails.aspx?id=#{@animal_id}"
    response = HTTParty.get(api)
    @profile = Nokogiri::HTML(response)
  end
end

