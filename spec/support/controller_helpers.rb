module ControllerHelpers
  def log_in(client)
    warden = request.env['warden']
    allow(warden).to receive(:authenticate!).and_return(client)
    allow(controller).to receive(:current_client).and_return(client)
  end
end
