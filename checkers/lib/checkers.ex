defmodule Checkers do

  alias Checkers.Type

  @spec tests() :: Type.player_info()
  def tests do
    player_one=
    %{
        current_pawns: [{:man, {'A',1}},
        {:man, {'B',1}}]

    }
    IO.inspect(player_one)
  end

  def tests2() do
    IO.inspect(Checkers.Impl.Game.get_starting_board())
  end

end
