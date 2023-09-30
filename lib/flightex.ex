defmodule Flightex do
  alias Flightex.Bookings.CreateOrUpdate, as: BookingCreateOrUpdate
  alias Flightex.Users.Agent, as: UserAgent
  alias Flightex.Bookings.Agent, as: BookingAgent

  def start_agents do
    UserAgent.start_link(%{})
    BookingAgent.start_link(%{})
  end

  defdelegate create_or_update_booking(params), to: BookingCreateOrUpdate, as: :call
end
