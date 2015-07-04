class MembersController < ApplicationController
    def index
      @members = Member.all
    end

    def show
      @member = Member.find(params["id"])
    end
    def create
      member_params = params[:member].permit(:image , :name ,:description)
      @member = Member.new(member_params)
      respond_to do |format|
        if @member.save
          format.html { redirect_to(entries_path(@member), notice: 'devise was successfully updated.' ) }
          format.json { render :show, status: :ok, location: @member }
          format.js
        else
          format.html { render :new }
          format.json { render json: @member.errors, status: :unprocessable_entity }
          format.js
        end
      end
    end
    def edit
      @member = Member.find(params["id"])
    end
    def update
      member_params = params[:member].permit(:image , :name ,:description)
      @member = Member.find(params["id"])
      respond_to do |format|
        if @member.update(member_params)
          format.html { redirect_to(entries_path(@member), notice: 'devise was successfully updated.' ) }
          format.json { render :show, status: :ok, location: @member }
          format.js
        else
          format.html { render :new }
          format.json { render json: @member.errors, status: :unprocessable_entity }
          format.js
        end
      end
    end
    def destroy
      member = Member.find(params["id"])
      @member= Member.destroy(member)
      respond_to do |format|
        format.html { redirect_to(entries_path(@member), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @member }
        format.js
      end
    end
  end

