function n = num(s,V1,V2,V3,H1,H2,H3,H4)

  numpad = ["1" "2" "3"; "4" "5" "6"; "7" "8" "9"; "*" "0" "#"];

  #iteracion vertical

  h1 = max(H1*s);
  h2 = max(H2*s);
  h3 = max(H3*s);
  h4 = max(H4*s);
  [~,max1] = max([h1,h2,h3,h4]); #max retorna posicion;


  #iteracion horizontal


  v1 = max(V1*s);
  v2 = max(V2*s);
  v3 = max(V3*s);
  [~,max2] = max([v1,v2,v3]);

  n = numpad(max1,max2);
  endfunction
