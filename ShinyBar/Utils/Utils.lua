function Deepcopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

-- Prepares a loaded table for use.  Workaround for Turbine.PluginData.Save() bug.
function _G.ImportTable(obj)
    if (type(obj) == "string") then
        local prefix = string.sub(obj, 1, 1);
        if (prefix == "$") then
            return string.sub(obj, 2);
        elseif (prefix == "#") then
			-- need to run it through interpreter, since tonumber() may only accept ","
			return loadstring("return " .. string.sub(obj, 2))();
        else -- shouldn't happen
            return obj;
        end
    elseif (type(obj) == "table") then
        local newTable = {};
        for i, v in pairs(obj) do
            newTable[ImportTable(i)] = ImportTable(v);
        end
        return newTable;
    else
        return obj;
    end
end

function _G.AddCallback(object, event, callback)
    if (object == nil) then
        error("First argument to AddCallback() is nil", 2);
    else
        if (object[event] == nil) then
            object[event] = callback;
        else
            if (type(object[event]) == "table") then
                table.insert(object[event], callback);
            else
                object[event] = {object[event], callback};
            end
        end
    end
    return callback;
end

-- Prepares a table for saving.  Workaround for Turbine.PluginData.Save() bug.
function _G.ExportTable(obj)
    if (type(obj) == "number") then
        local text = tostring(obj);
        -- Change floating-point numbers to English format
        return "#" .. string.gsub(text, ",", ".");
    elseif (type(obj) == "string") then
        return "$" .. obj;
    elseif (type(obj) == "table") then
        local newTable = {};
        for i, v in pairs(obj) do
            newTable[ExportTable(i)] = ExportTable(v);
        end
        return newTable;
    else
        return obj;
    end
end