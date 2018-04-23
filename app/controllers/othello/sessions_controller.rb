module Othello
  class SessionsController < ApplicationController

    # GET /sessions
    def index
      @sessions = Session.all

      render json: @sessions
    end

    def show
      @session = set_session
      render json: @session
    end

    def create
      @session = Session.new(session_params)

      if @session.save
        render json: @session, status: :created
      else
        render json: @session.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @session = set_session
      @session.destroy
    end

    # PATCH/PUT /sessions/"host"
    def update
      if @session.update(session_params_update)
        render json: @session, status: :updated
      else
        render json: @session.errors, status: :unprocessable_entity
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:host])
    end

    def session_params
      params.permit(:host, :guest, :movetime, :state)
    end

    def session_params_update
      params.permit(:guest, :state)
    end

  end
end
