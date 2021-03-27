#include <iostream>
#include <ctype.h>
#include <fstream>
using namespace std;

void error(string text, int& index, string output);

void isVar(string text, int& index);

void isExp(string text, int& index, string output);

void isReal(string text, int& index, string output);

void isNum(string text, int& index, string output);

void isComment(string text, int& index);

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