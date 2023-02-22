a = [0,2]
a << 4*a[-1] + a[-2] while a[-2..-1].sum < 4_000_000
p a.sum
