class SessionRecapsController < ApplicationController
    def index
        @session_recaps = SessionRecap.order('played_on DESC')
    end

    def new
        @session_recap = SessionRecap.new
    end

    def create
        @session_recap = SessionRecap.new
        @session_recap.title = params[:session_recap][:title]
        @session_recap.body = params[:session_recap][:body]
        @session_recap.played_on = params[:session_recap][:played_on]
        @session_recap.save

        if @session_recap.played_on == nil
            @session_recap.played_on = Date.today
            @session_recap.save
        end

        redirect_to session_recaps_path
    end
end
