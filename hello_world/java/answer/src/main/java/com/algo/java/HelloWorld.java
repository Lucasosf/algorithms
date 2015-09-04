package com.algo.java;

public class HelloWorld {
    public String say(String name){
        return "Hello "+name+"!";
    }
    
    public String say(){
        return say("World");
    }
}
