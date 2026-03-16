Funcion resultado <- VerificarPIN(ingresado, correcto)
	Definir resultado Como Logico;
	
	Si ingresado = correcto Entonces
		resultado <- Verdadero;
	Sino
		resultado <- Falso;
	FinSi
FinFuncion
Algoritmo CajeroAutomatico


Definir PIN_CORRECTO Como Entero;
Definir intentos Como Entero;
Definir login_exitoso Como Logico;
Definir pin_ingresado Como Entero;

PIN_CORRECTO <- 1234;
intentos <- 1;
login_exitoso <- Falso;


Mientras intentos <= 3 Y login_exitoso = Falso Hacer
	Escribir "Intento ", intentos, " de 3";
	Escribir "Ingrese su PIN:";
	Leer pin_ingresado;
	
	login_exitoso <- VerificarPIN(pin_ingresado, PIN_CORRECTO);
	
	Si login_exitoso = Falso Entonces
		intentos <- intentos + 1;
		Si intentos <= 3 Entonces
			Escribir "PIN incorrecto. Intente nuevamente.";
		FinSi
	FinSi
	
	Escribir ""; 
FinMientras

Si login_exitoso = Verdadero Entonces
	Escribir "*** ACCESO CONCEDIDO ***";
Sino
	Escribir "!!! ALERTA: Tarjeta Bloqueada !!!";
FinSi

FinAlgoritmo