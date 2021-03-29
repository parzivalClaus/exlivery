defmodule Exlivery.Users.UsersTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all parameters are valid, returns the user" do
      response =
        User.build(
          "Rua Clemente Falcão, 383",
          "Claudio",
          "cldgncvs91@gmail.com",
          "39949445892",
          29
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid parameters, returns an error" do
      response =
        User.build(
          "Rua Clemente Falcão",
          "Claudio",
          "cldgncvs91@gmail.com",
          "39949445892",
          15
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
