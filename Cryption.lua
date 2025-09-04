local encryption = {}

function encryption.encrypt(text, shift)
    local result = {}
    for i = 1, #text do
        local c = string.byte(text, i)
        table.insert(result, string.char(c + shift))
    end
    return table.concat(result)
end

function encryption.decrypt(text, shift)
    local result = {}
    for i = 1, #text do
        local c = string.byte(text, i)
        table.insert(result, string.char(c - shift))
    end
    return table.concat(result)
end

return encryption