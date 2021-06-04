import javax.swing.*;
import java.util.LinkedList;
import java.util.Queue;

public class FileQueue {
    private int flag=0;
    private final Queue<String> convert = new LinkedList<>();
    synchronized public void addFile(String fileName){
        convert.add(fileName);
        System.out.println(fileName+" ( "+convert.size()+" )");
    }
    synchronized public String getFile(){
        if(!convert.isEmpty()){
            String aux = convert.peek();
            convert.remove();
            return aux;
        }
        finished();
        return null;
    }
    private void finished(){
        flag++;
        if (flag==Panel.nHilos) {
            long fin = System.currentTimeMillis();
            System.out.print("Tiempo de ejecución: ");
            System.out.print(fin - Panel.inicio);
            System.out.println(" ms");
            flag=0;
        }
    }
}