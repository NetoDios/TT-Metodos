import java.io.IOException;

public class Hilos extends Thread{
    private final FileQueue archivos;
    private final int id;
    private String path;
    Hilos(int id, String path, FileQueue files){
        this.archivos = files;
        this.id = id;
        this.path=path;
        if(path.charAt(path.length()-1)!='/')
            this.path=path+"/";
    }
    @Override
    public void run(){
        System.out.println("Hilo " + this.id);
        String file = "";
        String execute = "src/ResaltadorSintaxico.exe";
        Runtime app = Runtime.getRuntime();

        while(file != null){
            file = this.archivos.getFile();
            String[] params = {execute, path, file};
            if(file!=null){
                try {
                    long inicio = System.currentTimeMillis();
                    app.exec(params);
                    long fin = System.currentTimeMillis();
                    System.out.print("Procesando (H" + this.id + "): " + file);
                    System.out.println(" ->\t"+(fin-inicio)+" ms");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}