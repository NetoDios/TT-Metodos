#include <iostream>
#include <ctype.h>
#include <fstream>

using namespace std;

/* Edado de error:
	+entradas:
		-texto: La linea de codigo que se esta evaluando
		-index(referencia): La posicion desde la cual se encuentra el error
		-output: La concatenacion de todo el texto anterior que ahora se marca como error
	+Se concatenan todos los caracteres siguientes hasta que se encuentre un operador o parentecis
*/
void error(string text, int& index, string output){
	bool substract = 0;
	substract = (output == "");
	while( isalpha(text[index]) || isdigit(text[index]) || text[index] == '_' || text[index] == '.' ){
		output += text[index];
		index++;
	}
	cout << output << '\t' << "Error" <<'\n';
	index -= substract;
}
/* Estado de variable:
	+entradas:
		-texto: La linea de codigo que se esta evaluando
		-index(referencia): La posicion desde la cual se encuentra el error
	+Se concatenan todos los caracteres hasta que encuentre alguno que no sea permitido para Variable
	+Determina si hay o no un error
*/
void isVar(string text, int& index){
	string output = "";
	while( isalpha(text[index]) || isdigit(text[index]) || text[index] == '_'  || 
			int(text[index]) == 164 || int(text[index]) == 165 ){
		output += text[index];
		index++;
	}
	if( text[index] == '.' )
		error(text, index, output);
	else
		cout << output << '\t' << "Variable" << '\n';
	index--;
}

/* Estado de Exponente:
	+entradas:
		-texto: La linea de codigo que se esta evaluando
		-index(referencia): La posicion desde la cual se encuentra el error
		-output: La concatenacion de todo el texto anterior que sera impresa en consola
	+Cuando un numero real presenta un letra e en su definicion se ejecuta
	+Concatena todos los digitos del numero real hasta que encuentre un no digitos
	+Determina si es una entrada valida o no
*/
void isExp(string text, int& index, string output){
	output += text[index];
	index++;
	if( text[index] == '-' ){
		output += text[index];
		index++;
	}
	while( isdigit(text[index]) ){
		output += text[index];
		index++;
	}
	
	if( text[index] == '.' || text[index] == '_' || isalpha(text[index]))
		error(text, index, output);
	else
		cout << output << '\t' << "Real" << '\n';
}

/* Estado de Real:
	+entradas:
		-texto: La linea de codigo que se esta evaluando
		-index(referencia): La posicion desde la cual se encuentra el error
		-output: La concatenacion de todo el texto anterior que sera impresa en consola
	+Se ejecuta cuando un entero contiene un punto
	+Concatena los digitos de un numero real hasta encontrar un no digitos
	+Determina si hay o no errores
*/
void isReal(string text, int& index, string output){
	output += text[index];
	index++;
	while( isdigit(text[index]) ){
		output += text[index];
		index++;
	}
	if( text[index] == 'E' || text[index] == 'e' )
		isExp(text, index, output);
	else if( text[index] == '.' )
		error(text, index, output);
	else
		cout << output << '\t' << "Real" << '\n';
}

/* Estado de Numero:
	+entradas:
		-texto: La linea de codigo que se esta evaluando
		-index(referencia): La posicion desde la cual se encuentra el error
		-output: La concatenacion de todo el texto anterior que sera impresa en consola
	+Concatena los digitos de un numero hasta encontrar un no digito
	+Determina si hay o no errores
*/
void isNum(string text, int& index, string output){
	while( isdigit(text[index]) ){
		output += text[index];
		index++;
	}
	if( text[index] == '.')
		isReal(text, index, output);
	else if( isalpha(text[index]) )
		error(text, index, output);
	else
		cout << output << '\t' << "Entero" << '\n';
	index--;
}

/* Estado de Comentario:
	+entradas:
		-texto: La linea de codigo que se esta evaluando
		-index(referencia): La posicion desde la cual se encuentra el error
	+Determina si es comentario o no
	+Termina de leer la linea actual
*/
void isComment(string text, int& index){
	if( text[index+1] == '/' ){
		cout << text.substr( index, text.length()-index ) << '\t' << "Comentario" << '\n';
		index = text.length();
	}else cout << "/" << '\t' << "División" << '\n';
}

/* Estado inicial:
	+entradas:
		-archivo: El nombre del archivo con la extension a analizar
	+Abre el archivo indicado solo si se encuentra
	+Para cada linea encontrada en el archivo
		+Analiza todos los caracteres y los asigna a una categoria en base a su funcion dentro de la linea
*/
void lexerAritmetico(string archivo){
	string line = "";
	fstream file = fstream(archivo);
	if( file.is_open() ){
		cout << "TOKEN" << '\t' << "TIPO" << '\n';
		while(! file.eof()){
			getline(file, line);
			for(int i = 0 ; i < line.length() ; i++){
				if( line[i] == '=' ) cout << "=" << '\t' << "Asignación" << '\n';
				else if( line[i] == '+') cout << "+" << '\t' << "Suma" << '\n';
				else if( line[i] == '-'){
					if( isdigit(line[i+1]) ) isNum(line, ++i, "-");
					else cout << "-" << '\t' << "Resta" << '\n';
				}
				else if( line[i] == '*') cout << "*" << '\t' << "Multiplicación" << '\n';
				else if( line[i] == '/') isComment(line, i);
				else if( line[i] == '^') cout << "^" << '\t' << "Potencia" << '\n';
				else if( line[i] == '(') cout << "(" << '\t' << "Paréntesis que abre" << '\n';
				else if( line[i] == ')') cout << ")" << '\t' << "Paréntesis que cierra" << '\n';
				else if( line[i] == '.' || line[i] == '_') error(line, i, "");
				else if( isalpha(line[i]) ) isVar(line, i);
				else if( isdigit(line[i]) ) isNum(line, i, "");
			}
			if(line != "")cout<<"---->\n";
		}
	}
	else cout << "Error no se encontró el archivo" << endl;
	
	file.close();
}

/* Funcion principal que llama al estado inicial:
	+Solicita el nombre del archivo con los casos de pruebas
	+Hace una llamada a lexerAritmetico
*/
int main() {
  string nombreArchivo = "";
	cout<<"Introduce el nombre del archivo a analizar, incluyendo su extension"<<endl;
	cin>>nombreArchivo;
	lexerAritmetico(nombreArchivo);
	cout<<"end, press key to close..."<<endl;
  cin.ignore();
  cin.get();
	return 0;
}
