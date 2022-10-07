function retval = bipart_func (a, b, f)
  % Implementacao do método da biparticao para encontrar um zero para a funcao f.
  % [a, b] indica o intervalo considerado.
  % Implemente o método dando prioridade ao intervalo mais à esquerda sempre que possível.
  % A função deve retornar uma raiz da equação f(x) = 0.

while (b - a > 0.000005) 
  x = (a + b)/2;
  if (f(x) * f(a)) <= 0
    b = x
  else
    a = x
  end
end

retval = x
endfunction