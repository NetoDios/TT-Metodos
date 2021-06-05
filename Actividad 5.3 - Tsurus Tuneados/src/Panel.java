import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;

public class Panel extends JFrame{
    private JButton Browse;
    private JPanel rootPanel;
    private JLabel labelPic;
    private static FileQueue archivos;
    public static long inicio;
    public static int nHilos=36;
    public Panel() {
        add(rootPanel);
        setTitle("Actividad 5.3 - Tsurus Tuneados");
        setSize(450,600);
        Hilos[] hilos = new Hilos[nHilos];
        archivos = new FileQueue();
        ImageIcon tsuruTuneado = new ImageIcon("Tank.png");
        labelPic.setIcon(tsuruTuneado);
        labelPic.setSize(750,720);
        labelPic.setText("");
        Browse.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                //Browse.setEnabled(false);
                JFileChooser chooser = new JFileChooser();
                chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
                int response = chooser.showOpenDialog(rootPanel);
                if(response == JFileChooser.APPROVE_OPTION){
                    String path = chooser.getSelectedFile().getPath();
                    try {
                        fillQueue(path);
                        inicio = System.currentTimeMillis();
                        for (int i=0 ; i<nHilos ; i++) {
                            hilos[i] = new Hilos(i+1,path , archivos);
                            hilos[i].start();
                        }
                    } catch (NumberFormatException ex) {
                        System.out.println(ex.getMessage());
                    }
                }
            }
        });
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
