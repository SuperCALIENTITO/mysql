--[[----------------------------
            Importante
----------------------------]]--
mysql = {
    ["folder"] = "mysql"
}

require("functions")

function mysql.main()

    local count = 1

    for files in io.popen("DIR " .. mysql["folder"] .. " /aa /B"):lines() do

        if string.EndsWith(files, ".lua") then

            local fileName = string.sub(files, 0, -5)

            local a = require(mysql["folder"] .. "." .. fileName)
            local base = require("html_base")

            local html = base["head1"] .. FTU(fileName) .. base["head2"]

            for k, tbl in ipairs(a) do
                local tType = tbl["type"]

                if tType == "About" then

                    html = html .. htmlLua.Title(tbl["title"], "clase")

                    html = html .. htmlLua.subTitle(tbl["description"])

                    html = html .. "<br>\n"

                elseif tType == "Example"  then

                    html = html .. htmlLua.Title(tbl["title"])

                    html = html .. htmlLua.subTitle(tbl["example"], "example")

                    html = html .. htmlLua.subTitle(tbl["output"], "output")

                elseif tType == "SeeAlso" then

                    for index, aTbl in ipairs(tbl["content"]) do

                    end

                end
            end

            html = html .. base["end"]

            print(html)

        end
    end
end

mysql.main()