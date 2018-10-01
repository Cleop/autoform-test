defmodule AutoformTest.Venue do
  use Ecto.Schema
  import Ecto.Changeset


  schema "venues" do
    field :venue_name, :string
    field :type_of_venue, :boolean
    field :postcode, :string
    field :phone_number, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:venue_name,:type_of_venue,:postcode,:phone_number])
    |> validate_required([:venue_name,:type_of_venue,:postcode,:phone_number])
  end
end
