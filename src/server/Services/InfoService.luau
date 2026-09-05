const Players = game:GetService("Players")
const ReplicatedStorage = game:GetService("ReplicatedStorage")

const Network = require(ReplicatedStorage.Shared.Network)
const InfoServiceConstants = require(ReplicatedStorage.Shared.InfoService.InfoServiceConstants)

const InfoNamespace = Network.InfoService

const InfoService = {}

InfoService.HandleQuery = function(Request, Player)
	const Gender = Request.Gender
	const Age = Request.Age

	if not table.find(InfoServiceConstants.Genders, Gender) then
		return {
			Success = false,
			Response = `Invalid Gender`,
		}
	end

	if Age < InfoServiceConstants.MinAge or Age > InfoServiceConstants.MaxAge then
		return {
			Success = false,
			Response = "Invalid Age",
		}
	end

    for Key, Value in next, Request do
        Player:SetAttribute(Key, Value)
    end

	return {
		Success = true,
		Response = "Welcome",
	}
end

InfoService.Start = function()
	InfoNamespace.queries.SubmitInformation.listen(InfoService.HandleQuery)
end

return InfoService
