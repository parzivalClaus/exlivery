defmodule Exlivery.Factory do
  use ExMachina

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
end
