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

-- Copies the source table into the destination table (or a new table, if 'destTable' is absent).
-- Subtables are duplicated.
-- Returns the destination table.
function _G.DeepTableCopy(sourceTable, destTable)
    if (destTable == nil) then
        destTable = {};
    end
    if (type(sourceTable) ~= "table") then
        error("DeepTableCopy(): sourceTable is " .. type(sourceTable), 2);
    elseif (type(destTable) ~= "table") then
        error("DeepTableCopy(): destTable is " .. type(destTable), 2);
    end
    for k, v in pairs(sourceTable) do
        if (type(v) == "table") then
            destTable[k] = { };
            DeepTableCopy(v, destTable[k]);
        else
            destTable[k] = v;
        end
    end
    return destTable;
end

-- Copies the source table into the destination table (or a new table, if 'destTable' is absent).
-- Subtables are shared (not duplicated).
-- Returns the destination table.
function _G.ShallowTableCopy(sourceTable, destTable)
    if (destTable == nil) then
        destTable = {};
    end
    if (type(sourceTable) ~= "table") then
        error("ShallowTableCopy(): sourceTable is " .. type(sourceTable), 2);
    elseif (type(destTable) ~= "table") then
        error("ShallowTableCopy(): destTable is " .. type(destTable), 2);
    end
    for k, v in pairs(sourceTable) do
        destTable[k] = v;
    end
    return destTable;
end


-- Returns a multi-line Lua representation of a table.  Has optional 'maxdepth' arg to prevent runaway recursion.
function _G.PrettyPrint(obj, prefix, maxdepth)
    if (type(maxdepth) == "number") then
        maxdepth = maxdepth - 1;
    end
    if (type(obj) == "boolean") then
        if (obj) then
            return "true";
        else
            return "false";
        end
    elseif (type(obj) == "number") then
        local text = tostring(obj);
        -- Change floating-point numbers to English format
        return string.gsub(text, ",", ".");
    elseif (type(obj) == "string") then
        return string.format("%q", obj);
    elseif (type(obj) == "table") then
        if ((type(maxdepth) == "number") and (maxdepth < 0)) then
            return tostring(obj);
        else
            local text = "{\n";
            local newPrefix = prefix .. "   ";
            local i = 1;
            local count = 0;
            for key in sorted_keys(obj) do
                local value = PrettyPrint(obj[key], newPrefix, maxdepth);
                if (value ~= nil) then
                    local item = value .. ";";
                    if (key ~= i) then
                        local index = Serialize(key, maxdepth);
                        item = "[" .. index .. "] = " .. item;
                    else
                        i = i + 1;
                    end
                    text = text .. newPrefix .. item .. "\n";
                    count = count + 1;
                end
            end
            if (count == 0) then
                text = "{}";
            else
                text = string.gsub(text, ",$", "");
                text = text .. prefix .. "}";
            end
--text = tostring(obj) .. ":" .. text;
            return text;
        end
    else
--Turbine.Shell.WriteLine("unknown type " .. tostring(type));
        return tostring(obj);
    end
end