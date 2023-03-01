#' Equation used to compute automobile fuel efficiency (the power needed to keep a car moving at a given speed)

#' c_rolling: rolling resistive coefficients (0.015)
#' c_drag: aerodynamic resistive coefficients (0.3)
#' V: is vehicle speed (assuming no headwind) in m/s (or mps) m:is vehicle mass in kg
#' A: is surface area of car (m^2)
#' g: is acceleration due to gravity (9.8 m/s^2)
#' p_air: density of air (1.2 kg/m^3)
#' Pb: power in Watts

# y = function (m,x,b) {
# result = n*m+b
# return (result)
# }

power_gen_auto = function(m, V, A, c_rolling = 0.015, g = 9.8, p_air = 1.2, c_drag = 0.3) {
  pb = (c_rolling * m * g * V + 1/2 * A * p_air * c_drag * V^3)
  return (pb)
}
