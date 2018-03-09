# This is where the method we're testing will go
#  (T(°F) - 32) × 5/9
#  T(°C) × 9/5 + 32
def fah_to_cel(f_temp)
  (f_temp - 32) * 5.0/9.0
end

def cel_to_fah(c_temp)
  c_temp * 9.0/5.0 + 32
end