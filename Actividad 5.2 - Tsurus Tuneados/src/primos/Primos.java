package primos;

public class Primos extends Thread{
        int ID;
        public Primos(int id){
            this.ID = id;
        }
        public long Secuencial(){
            long sum=0;
            for(int i=2; i<5000000; ++i)
                if( isPrime(i) )
                    sum+=i;
            return sum;
        }
        public boolean isPrime(int number){
            if(number<2) return false;
            for(int i=2; i*i<=number; ++i)
                if(number%i == 0)
                    return false;
            return true;
        }
    }
}
