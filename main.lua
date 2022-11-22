--[[----------------------------
            Importante
----------------------------]]--
mysql = {
    ["folder"] = "mysql"
}

require("functions")

function mysql.main()

    local count = 1
    
    local tbl = {}

    local base = require("html_base")

    for files in io.popen("DIR " .. mysql["folder"] .. " /aa /B"):lines() do

        if string.EndsWith(files, ".lua") then

            local fileName = string.sub(files, 0, -5)

            table.insert(tbl, fileName)

            local a = require(mysql["folder"] .. "." .. fileName)

            local html = ""

            if a["name"] then

                html = base["head1"] .. a["name"] .. base["head2"]

            else

                html = base["head1"] .. FTU(fileName) .. base["head2"]
                
            end

            for k, tbl in ipairs(a) do
                local tType = tbl["type"]

                if tType == "About" then

                    html = html .. htmlLua.Title(tbl["title"])

                    html = html .. htmlLua.subTitle(tbl["description"]):gsub("<T>", "<a class=\"example\">")

                    html = html .. htmlLua.breakLine()

                elseif tType == "Example"  then

                    html = html .. htmlLua.Title(tbl["title"])

                    for index, aTbl in ipairs(tbl["content"]) do

                        html = html .. htmlLua.subTitle(aTbl[1], "example")
                        
                        html = html .. htmlLua.subTitle(aTbl[2], "output"):gsub("<T>", "<a class=\"example\">")

                    end

                    html = html .. htmlLua.breakLine()

                elseif tType == "SeeAlso" then

                    html = html .. htmlLua.Title(tbl["title"])

                    html = html .. htmlLua.uList("list")

                    if type(tbl["content"][1]) == "table" then

                        for index, aTbl in ipairs(tbl["content"]) do
    
                            html = html .. htmlLua.list(aTbl[1] .. " - " .. aTbl[2])
    
                        end

                    else

                        for index, aTbl in ipairs(tbl["content"]) do
    
                            html = html .. htmlLua.list(aTbl)
    
                        end
                        
                    end

                    html = html .. htmlLua.uListEnd()

                    html = html .. htmlLua.breakLine()

                elseif tType == "Table" then

                    html = html .. htmlLua.Title(tbl["title"])

                    if tbl["description"] then

                        html = html .. htmlLua.subTitle(tbl["description"])
                        
                    end

                    html = html .. htmlLua.subTitle(tbl["input"], "example")

                    html = html .. htmlLua.tableStart("example table")

                    local dTable = {}

                    for _, v in ipairs(tbl["output"]) do
                        table.insert(dTable, v)
                    end

                    html = html .. htmlLua.tableHead(tbl["output"]["head"])

                    html = html .. htmlLua.tableData(dTable)

                    html = html .. htmlLua.tableEnd()

                    html = html .. htmlLua.breakLine()

                end

            end

            html = html .. "</div>\n\n" .. base["navLayout"]

            local tFile = io.open("html/" .. fileName .. ".html", "w")
            tFile:write(html)
            tFile:close()

        end
    end
end

mysql.main()