defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list sum" do
      list = [1, 2, 3, 4, 5]
      response = SumList.call(list)
      expects_response = 15

      assert response == expects_response
    end
  end
end
