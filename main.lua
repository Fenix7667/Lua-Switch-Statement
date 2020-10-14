--| You can copy and paste this function to use it.

local Switch = function(Value, Cases)
    assert(type(Cases) == "table", "Switch statement second argument must be a table with the possible cases!");
    
    (Cases[Value] or Cases["default"])();

    return (Cases[Value] and true or false);
end;

--| How to use:

local Success = Switch(5, {
    [1] = function()
        print("It's 1.");
    end;

    [5] = function()
        print("It's 5.");
    end;

    ["default"] = function()
        print("Default run case.");
    end;
});

print(Success) --| Will be true if a case is found. Will be false if default run't or a case was not found.
