using ControlSystemIdentification, ControlSystems, Plots

G = c2d(tf(1, [1,1,1]), 0.02)
u = randn(1, 100)
res = lsim(G, u)
d = iddata(res)

plot(d)

specplot(d)

Gh,_ = tfest(d)
plot(Gh, plotphase=true)

plot(tfest(d))