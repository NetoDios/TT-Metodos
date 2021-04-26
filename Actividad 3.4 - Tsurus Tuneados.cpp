#include <iostream>
#include <ctype.h>
#include <fstream>
#include <chrono>

using namespace std;
#define CSS ".numero{\n\tcolor: skyblue;\n}\n.logico{\n\tcolor: darkgoldenrod;\n}\n.simbolo{\n\tcolor: forestgreen;\n}\n.operador{\n\tcolor: red;\n}\n.variables{\n\tcolor: gray;\n}\n.especiales{\n\tcolor: coral;\n}\n.comentarios{\n\tcolor: plum;\n}\n.reservado{\n\tcolor: saddlebrown;\n}\n.error{\n\tcolor: purple;\n}\n*{\n\tbackground: black;\n}\n";
#define INICIO "<!DOCTYPE html>\n<html lang=\"en\">\n\t<head>\n\t\t<link rel=\"stylesheet\" href=\"style.css\">\n\t</head>\n\t<body>\n";
#define FIN "\t</body>\n</html>";

ofstream  output;

void error(string text, int& index, string salida);
void isVar(string text, int& index);
void isExp(string text, int& index, string salida);
void isReal(string text, int& index, string salida);
void isBool(string text, int& index, string salida);
void isNum(string text, int& index, string salida);
void isString(string text, int& index, string salida);

/* Estado inicial:
	+entradas:
		-archivo: El nombre del archivo con la extension a analizar
	+Abre el archivo indicado solo si se encuentra
	+Para cada linea encontrada en el archivo
		+Analiza todos los caracteres y los asigna a una categoria en base a su funcion dentro de la linea
	+complegidad:
		- Average Case: O( n )
		- Best Case: O( 1 )
		- n siendo el numero de caracteres dentro del archivo escogido
*/
void lexerAritmetico(string archivo){
	string line = "";
	fstream file = fstream(archivo);
	if( file.is_open() ){
		ofstream css;
		css.open("Output/style.css");
		css << CSS;
		output.open("Output/code.html");
		output << INICIO;
		while(! file.eof()){
			getline(file, line);
			output << "\t\t<p>\n\t\t\t";
			for(int i = 0 ; i < line.length() ; i++){
				if( line[i] == '=' or line[i] == '+' or line[i] == '*' or line[i] == '^' or line[i] == '/')
					output << "<span class='operador'>" << line[i] <<"</span>";
				else if(line[i]==';'){
					output << "<span class='comentarios'>" << line.substr( i, line.length()-i ) <<"</span>";
					break;
				}
				else if( line[i] == '-'){
					if( isdigit(line[i+1]) ) isNum(line, ++i, "-");
					else output << "<span class='operador'>" << line[i] <<"</span>";
				}
				else if( line[i] == '(' || line[i] == ')' )
					output << "<span class='especiales'>" << line[i] <<"</span>";
				else if( isalpha(line[i]) ) isVar(line, i);
				else if( line[i] == '.' || line[i] == '_') error(line,i,"");
				else if( isdigit(line[i]) ) isNum(line, i, "");
				else if( line[i] == '\'' ) isString(line,i,"");
				else if( line[i] == '#' ) isBool(line,i,"");
				else if( line[i] == ' ') output << "&nbsp";
			}
			output << "</p>\n";
		}
		output << FIN;
	}
	else cout << "Error no se encontró el archivo" << endl;
	
	file.close();
}

/* Funcion principal que llama al estado inicial:
	+Solicita el nombre del archivo con los casos de pruebas
	+Hace una llamada a lexerAritmetico
	+Calcula e imprime el tiempo de ejecucion desde que se termina de introducir el nombre del archivo hasta que termina toda la ejecucion.
*/
int main() {
  	string nombreArchivo = "prueba.txt";
	cout<<"Introduce el nombre del archivo a analizar, incluyendo su extension"<<endl;
	//cin>>nombreArchivo;
	auto t1 = chrono::high_resolution_clock::now();
	lexerAritmetico(nombreArchivo);
	auto t2 = chrono::high_resolution_clock::now();
	auto ms_int = chrono::duration_cast<chrono::microseconds>(t2 - t1);
	cout<< "Tiempo de ejecucion: " << ms_int.count() << " microsegundos\n";
	cout<<"end, press any key to close..."<<endl;
	cin.ignore();
	cin.get();
	return 0;
}
