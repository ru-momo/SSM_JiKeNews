package com.burao.test;

public class Test extends Thread{

    public void run(){
        System.out.println("MyThread.run()");
    }

    @org.junit.Test
    public void test(){
        Test myThread1 = new Test();
        Test myThread2 = new Test();
        myThread1.start();
        myThread2.start();
    }
}
