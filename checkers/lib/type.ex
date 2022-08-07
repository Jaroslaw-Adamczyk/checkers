defmodule Checkers.Type do

  @type piece_type  :: :man | :king
  @type direction   :: :up | :down
  @type player      :: :first | :secound
  @type game_state  :: :initializing | :inncorect_move | :won_first | :won_secound | :next_move

  @type position(row, column) :: { row, column }

  @type player_info :: %{
    current_pawns: list({piece_type, position(integer, integer)}),
    direction: direction,
    name: player,
  }

  @type move_history :: [{player, position(char, integer)}]



end
