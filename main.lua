--[[----------------------------
            Importante
----------------------------]]--
mysql = {
    ["folder"] = "mysql"
}

require("gmod")

function mysql.main()

    local count = 1

    for files in io.popen("DIR " .. mysql["folder"] .. " /aa /B"):lines() do
        if string.EndsWith(files, ".lua") then

            local fileName = string.sub(files, 0, -5)

            local a = require(mysql["folder"] .. "." .. fileName)

            for k, tbl in ipairs(a) do
                local tType = tbl["type"]

                if tType == "About" then

                    print(tbl["title"], tbl["description"])

                    print"\n"

                elseif tType == "Example"  then

                    print("Ejemplos: ", tbl["example"])

                    print"\n"

                elseif tType == "SeeAlso" then

                    print("Vease tambien: ")

                    for index, aTbl in ipairs(tbl["content"]) do
                        
                        print(aTbl[1] .. "\t\t" .. aTbl[2])

                    end

                    print"\n"

                end
            end


        end
    end
end

mysql.main()