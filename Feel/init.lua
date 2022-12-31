--[[
Feel

    A short description of the module.

SYNOPSIS

    -- Lua code that showcases an overview of the API.
    local foobar = Feel.TopLevel('foo')
    print(foobar.Thing)

DESCRIPTION

    A detailed description of the module.

API

    -- Describes each API item using Luau type declarations.

    -- Top-level functions use the function declaration syntax.
    function ModuleName.TopLevel(thing: string): Foobar

    -- A description of Foobar.
    type Foobar = {

        -- A description of the Thing member.
        Thing: string,

        -- Each distinct item in the API is separated by \n\n.
        Member: string,

    }
]]

-- Implementation of Feel.

--// Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Library
local Library = require(script.Library)

return {
	Lerp = Library.Import("Lerp"),
	Wrap = Library.Import("Wrap"),
	Tween = Library.Import("Tween"),
	Spring = Library.Import("Spring"),
	Camera = Library.Import("Camera"),
	Particles = Library.Import("Particles"),
}