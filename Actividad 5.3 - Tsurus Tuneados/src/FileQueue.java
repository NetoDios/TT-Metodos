import java.util.LinkedList;
import java.util.Queue;

public class FileQueue {
    private final Queue<String> convert = new LinkedList<>();
    synchronized public void addFile(String fileName){
        convert.add(fileName);
        System.out.println(fileName+" ( "+convert.size()+" )");
    }
    synchronized public String getFile(){
        System.out.println("The size: "+convert.size());
        if(!convert.isEmpty()){
            String aux = convert.peek();
            System.out.println("Returning -> "+aux);
            convert.remove();
            if(!convert.isEmpty())
                notifyAll();
            return convert.peek();
        }
        return null;
    }
}
