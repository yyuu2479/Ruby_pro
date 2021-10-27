def to_hex(r, g, b)
  [r,g,b].inject("#") { |hex, n| hex + n.to_s(16).rjust(2, "0") }
end