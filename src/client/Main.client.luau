const ReplicatedStorage = game:GetService("ReplicatedStorage")

const Controllers = ReplicatedStorage.Client.Controllers

const ModuleLoader = require(ReplicatedStorage.Packages.ModuleLoader)

ModuleLoader.ChangeSettings({
    FOLDER_SEARCH_DEPTH = 2,
    YIELD_THRESHOLD = 10,
    VERBOSE_LOADING = true,
    WAIT_FOR_SERVER = true,
})

ModuleLoader.Start(Controllers)