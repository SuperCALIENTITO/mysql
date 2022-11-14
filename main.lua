--[[----------------------------
            Importante
----------------------------]]--
mysql = {
    ["folder"] = "mysql"
}

require("functions")

function mysql.main()

    local count = 1
    
    local base = require("html_base")

    for files in io.popen("DIR " .. mysql["folder"] .. " /aa /B"):lines() do

        if string.EndsWith(files, ".lua") then

            local fileName = string.sub(files, 0, -5)

            local a = require(mysql["folder"] .. "." .. fileName)

            local html = base["head1"] .. FTU(fileName) .. base["head2"]

            for k, tbl in ipairs(a) do
                local tType = tbl["type"]

                if tType == "About" then

                    html = html .. htmlLua.Title(tbl["title"])

                    html = html .. htmlLua.subTitle(tbl["description"])

                    html = html .. htmlLua.breakLine()

                elseif tType == "Example"  then

                    html = html .. htmlLua.Title(tbl["title"])

                    for index, aTbl in ipairs(tbl["content"]) do

                        html = html .. htmlLua.subTitle(aTbl[1], "example")
                        
                        html = html .. htmlLua.subTitle(aTbl[2], "output")

                    end

                    html = html .. htmlLua.breakLine()

                elseif tType == "SeeAlso" then

                    html = html .. htmlLua.Title(tbl["title"])

                    html = html .. "\n    <ul>\n"

                    for index, aTbl in ipairs(tbl["content"]) do

                        html = html .. htmlLua.list(aTbl[1] .. " - " .. aTbl[2])

                    end

                    html = html .. "    </ul>\n"

                    html = html .. htmlLua.breakLine()

                    html = html .. "<br>\n"

                end
            end

            html = html .. base["end"]

            local tFile = io.open("html/" .. fileName .. ".html", "w")
            tFile:write(html)
            tFile:close()

        end
    end
end

mysql.main()