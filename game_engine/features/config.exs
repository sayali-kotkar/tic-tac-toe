defmodule GameEngine.Features.Config do
	use WhiteBread.SuiteConfiguration

	suite name: "Computers play game",
        context: GameEngine.Features.ComputersPlayGameContext,
        feature_paths: ["features/"]
end