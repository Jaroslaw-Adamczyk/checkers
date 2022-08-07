defmodule Checkers.Impl.Game do

  alias Checkers.Type

  @type t :: %Checkers.Impl.Game{
    first_player:   Type.player_info,
    secound_player: Type.player_info,
    move_history:   Type.move_history,
    game_state:     Type.game_state,
    active_player:  Type.player,
  }

  defstruct(
    first_player: [],
    secound_player: [],
    move_history: [],
    game_state: :initializing,
    active_player: :first_player,
  )

  def new_game() do
    get_starting_board()
  end

  @spec get_starting_board() :: t
  def get_starting_board() do
    %__MODULE__{
      first_player:
        %{current_pawns: [
          {:man, {1,1}},
          {:man, {3,1}},
          {:man, {5,1}},
          {:man, {7,1}},
          {:man, {2,2}},
          {:man, {4,2}},
          {:man, {6,2}},
          {:man, {8,2}},
          {:man, {1,3}},
          {:man, {3,3}},
          {:man, {5,3}},
          {:man, {7,3}}],
        direction: :up,
        player: :first},
      secound_player:
        %{curretn_pawns: [
          {:man, {2,8}},
          {:man, {4,8}},
          {:man, {6,8}},
          {:man, {8,8}},
          {:man, {1,7}},
          {:man, {3,7}},
          {:man, {5,7}},
          {:man, {7,7}},
          {:man, {2,6}},
          {:man, {4,6}},
          {:man, {6,6}},
          {:man, {8,6}}],
        direction: :down,
        player: :secound },
      active_player: :first,
      game_state: :initializing
    }
  end

  def make_move(game, old_position, new_position) do
    validate_move(game, old_position, new_position)
    |> update_game(game, old_position, new_position)
    |> check_win_conditions()
  end

  def validate_move(_game, _old_position, _new_position) do
    true
  end

  def update_game(true, game, old_position, new_position) do


  end
  
  def get_table(game) do
    
  end

  def update_game(false, game,_old_position, _new_position) do
    %{game | game_state: :incoorrect_move}
  end

  def check_win_conditions(game) do
    game
  end

end
