import java.io.File;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {
    private static FileQueue archivos;
    public static void main(String[] args) {
        archivos = new FileQueue();
        try {
            int nHilos = 1;
            String path="";
            Scanner x = new Scanner(System.in);
            path=x.nextLine();
            fillQueue(path);
            Hilos[] hilos = new Hilos[nHilos];

            for (int i=0 ; i<nHilos ; i++) {
                hilos[i] = new Hilos(i+1, archivos);
                hilos[i].start();
            }
        } catch (NumberFormatException ex) {
            System.out.println(ex.getMessage());
        }
    }
    private static void fillQueue(String path) {
        File dir = new File(path);
        File[] dirFiles = dir.listFiles();
        if(dirFiles != null){
            for(File file : dirFiles) {
                String name = file.getName();
                archivos.addFile(name);
            }
        }
    }
}
