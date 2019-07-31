*Apologies, this text is only available in Spanish we are working on the English version*


### Multiplicación de matrices y estructura de datos

El cómputo matricial está construido sobre una jerarquía de operaciones del álgebra lineal. La multiplicación matriz-vector está hecha de productos punto y a su vez los productos punto involucran operaciones escalares de suma y multiplicación. Todas estas operaciones pueden ser descritas en una forma algorítmica o en el lenguaje del álgebra lineal, las cuales se complementan una a otra.
Entre las operaciones básicas matriciales se encuentran: 

* Transponer, R(m,n) -> R(n,m). Si C = tr(A) entonces C(i,j) = A(j,i)
* Sumar, R(m,n) + R(m,n) -> R(m,n). Si C = A + B entonces C(i,j) = A(i,j) + B(i,j)
* Multiplicación por un escalar, R x R(m,n) -> R(m,n). Si C = &alpha; A entonces C(i,j) = &alpha; A(i,j)
* Multiplicación entre matrices, R(m,p) x R(p,n) -> R(m,n). Si C = AB entonces C(i,j) = sum(k=1 -> p, A(i,k)B(k,j)
* Multiplicación "point-wise", R(m,n) x R(m,n) -> R(m,n). Si C = A.*B entonces C(i,j)=A(i,j)B(i,j)
* División "point-wise", R(m,n) / R(m,n) -> R(m,n). Si C = A./B entonces C(i,j)=A(i,j)/B(i,j) donde B(i,j) != 0

Y para las operaciones vectoriales tenemos:

* Multiplicación por un escalar, R x R(n) -> R(n). Si z = &alpha; x entonces z(i) = &alpha; x(i)
* Suma entre vectores, R(n) + R(n) -> R(n). Si z = x + y entonces z(i) = x(i) + y(i)
* Producto interno estandar o producto punto, R(nx1) x R(nx1) -> R. Si c = tr(x) y entonces c = sum(i=1 -> n, x(i)y(i))
* Operación *saxpy* (scalar a x plus y)nombre usado por LAPACK), R x R(n) x R(n) -> R(n). Si y = ax + y entonces y(i) = ax(i) + y(i)
* Operaciones "point-wise" también son útiles R(n) + R(n) -> R(n). Si z = x .* y entonces z(i) = x(i)  y(i). Si z = x ./ y entonces z(i) = x(i) / y(i) donde y(i)!=0
