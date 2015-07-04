class PersonsController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params["id"])
    @person.read("id")
  end
  def create
    person_params = params[:people].permit(:image , :name ,:description)
    person = Person.create(person_params)
    redirect_to(entries_path(person), notice: 'devise was successfully updated.' )
  end
  def edit
    @person = Person.find(params["id"])
  end
  def update
    person_params = params[:people].permit(:image , :name ,:description)
    person = Person.find(params["id"])
    person.update(person_params)
    redirect_to(entries_path(person), notice: 'devise was successfully updated.' )
  end
end
