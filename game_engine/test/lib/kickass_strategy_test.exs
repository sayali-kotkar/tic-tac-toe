defmodule GameEngine.KickAssStrategyTest do
	use ExUnit.Case

	test "kickass strategy finds immediate victory" do
		board = %GameEngine.Board{positions: {:o, :o, nil,
						 					  nil, nil, nil,
						 					  :x, :x, nil}}

		victory = GameEngine.PlayStrategies.KickAssStrategy.calculate_move(board, :o)
			
		assert victory == %{row: 0, column: 2}
	end

	test "kickass strategy tells to block immediate victory of oponent" do
		board = %GameEngine.Board{positions: {:x, :x, nil,
						 					  nil, nil, nil,
						 					  nil, :o, nil}}

		block = GameEngine.PlayStrategies.KickAssStrategy.calculate_move(board, :o)
			
		assert block == %{row: 0, column: 2}
	end

	test "kickass strategy finds a fork in order have two threats to win" do
		board = %GameEngine.Board{positions: {:o, :x, nil,
						 					  nil, :o, nil,
						 					  nil, nil, :x}}

		fork = GameEngine.PlayStrategies.KickAssStrategy.calculate_move(board, :o)
			
		assert fork == %{row: 1, column: 0}
	end
end