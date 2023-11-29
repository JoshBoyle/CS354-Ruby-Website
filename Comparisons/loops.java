package Comparisons;

public class loops {
    public static void main(String[] args) {
        int n = 5;
        for (int i = 0; i <= n; i++) {      //for loop
            System.out.println(i);
        }

        int[] numbers = {3,4,5,6};          //for each loop
        for(int number: numbers) {
            System.out.println(number);
        }

        int j = 5;                          //while loop
        while(j >= 0) {
            System.out.println(j);
            j--;
        }

    }
}
