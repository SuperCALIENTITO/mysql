local function isnumber(n) return type(n) == "number" end
local function istable(t) return type(t) == "table" end
local function isstring(s) return type(s) == "string" end

function table.GetKeys( tbl )

    local keys = {}
    local id = 1

    for k, _ in ipairs( tbl ) do
        keys[ id ] = k
        id = id + 1
    end

    return keys

end

function table.HasValue( tbl, val )
    for k, v in pairs( tbl ) do
        if ( v == val ) then return true end
    end
    return false
end

function PrintTable( tbl, indent )
	local keys = table.GetKeys( tbl )

    local done = done or {}
    local indent = indent or 0

	table.sort( keys, function( a, b )
		if ( isnumber( a ) and isnumber( b ) ) then return a < b end
		return tostring( a ) < tostring( b )
	end )

    done[ tbl ] = true

	for i = 1, #keys do
		local key = keys[ i ]
		local value = tbl[ key ]
		print( string.rep( "\t", indent ) )

		if  ( istable( value ) and not done[ value ] ) then

			done[ value ] = true
			print( key .. ":\n" )
			PrintTable ( value, indent + 2, done )
			done[ value ] = nil

		else

			print( key .. "\t=\t" .. value .. "\n" )

		end

	end

end

function string.StartsWith( s, pos )
    return string.sub( s, 1, string.len( pos ) ) == pos
end

function string.EndsWith( s, pos )
    return pos == "" or string.sub( s, -string.len( pos ) ) == pos
end

function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end