def to_hex(r, g, b)
  [r,g,b].inject("#") { |hex, n| hex + n.to_s(16).rjust(2, "0") }
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map { |s| s.hex }
end