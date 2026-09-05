const ReplicatedStorage = game:GetService("ReplicatedStorage")

const ByteNet = require(ReplicatedStorage.Packages.ByteNet)

return {
	InfoService = ByteNet.defineNamespace("Game", function()
		return {
			queries = {
				SubmitInformation = ByteNet.defineQuery({
					request = ByteNet.struct({
                       Gender = ByteNet.string,
                       Age = ByteNet.int8 
                    }),

					response = ByteNet.struct({
                        Success = ByteNet.bool,
                        Response = ByteNet.string
                    }),
				}),
			},
		}
	end),
}
