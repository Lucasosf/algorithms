package com.algo.java;

import static org.junit.Assert.*;

public class HelloWorldTest {

    @org.junit.Test
    public void testSay() {
        HelloWorld helloWorld = new HelloWorld();
        assertEquals(helloWorld.say("Lucas"), "Hello Lucas!");
        assertEquals(helloWorld.say(), "Hello World!");
    }
}
