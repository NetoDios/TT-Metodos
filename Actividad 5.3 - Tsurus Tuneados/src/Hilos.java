import java.io.IOException;

public class Hilos extends Thread{
    private final FileQueue archivos;
    private final int id;
    Hilos(int id, FileQueue files){
        this.archivos = files;
        this.id = id;
    }
    @Override
    public void run(){
        System.out.println("Hilo " + this.id);
        String file = "";
        String execute = "src/ResaltadorSintaxico.exe";
        Runtime app = Runtime.getRuntime();

        file = this.archivos.getFile();
        System.out.println("Got -> "+file);
        if(file != null){
            String[] params = {execute, file};
            System.out.println("Procesando (" + this.id + "): " + file);
            try {
                app.exec(params);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
