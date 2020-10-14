# Lua-Switch-Statement
This emulates a switch statement in Lua programming language. It's fast, easy and consistent.

# Documentation:
If a case is found Switch will return true. If default function run or switch don't find any case it will return false.

Code example:

```lua
local Success = Switch(VARIABLE, {
    [5] = function()
        --| Will run if Variable has the value of 5.
    end;

    default = function()
        --| Will run if any other case wans't found.
    end;
});
```
