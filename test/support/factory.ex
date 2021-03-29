defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Claudio",
      email: "cldgncvs91@gmail.com",
      cpf: "39949445892",
      age: 29,
      address: "Rua Clemente Falcão, 383"
    }
  end

  def item_factory do
    %Item{
      description: "Pizza de peperoni",
      category: :pizza,
      quantity: 1,
      unity_price: Decimal.new("35.5")
    }
  end
end
