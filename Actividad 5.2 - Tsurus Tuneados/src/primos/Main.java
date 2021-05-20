package primos;

public class Main {
    static final int HILOS = 12;
    static long resultado = 0;
    public static void main(String[] args) {
        long inicio = System.currentTimeMillis();
        primosSecuencial();
        long fin = System.currentTimeMillis();
        double tiempo = (double) ((fin - inicio));
        System.out.println("Algoritmo secuencial:\n\tResultado -> "+resultado+"\n\tTiempo -> "+tiempo+" ms");
        resultado=0;
        inicio = System.currentTimeMillis();
        try {
            primosParalelo();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        fin = System.currentTimeMillis();
        tiempo = (double) ((fin - inicio));
        System.out.println("Algoritmo paralelo:\n\tResultado -> "+resultado+"\n\tTiempo -> "+tiempo+" ms");
    }
    private static void primosSecuencial(){
        Primos secuencial = new Primos(0);
        resultado = secuencial.Secuencial();
    }
    private static void primosParalelo() throws InterruptedException {
        Thread[] hilos = new Thread[HILOS];
        for(int i=0; i<HILOS; ++i){
            hilos[i] = new Primos(i);
            hilos[i].start();
        }
        for(int i=0; i<HILOS; ++i)
            hilos[i].join();
    }
}
