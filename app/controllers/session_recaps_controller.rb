class SessionRecapsController < ApplicationController
    def index
        @session_recaps = SessionRecap.all
    end
end
