const ServerScriptService = game:GetService("ServerScriptService")
const ReplicatedStorage = game:GetService("ReplicatedStorage")

const Services = ServerScriptService.Server.Services

const ModuleLoader = require(ReplicatedStorage.Packages.ModuleLoader)

ModuleLoader.ChangeSettings({
    FOLDER_SEARCH_DEPTH = 2,
    YIELD_THRESHOLD = 10,
    VERBOSE_LOADING = true,
    WAIT_FOR_SERVER = true,
})

ModuleLoader.Start(Services)