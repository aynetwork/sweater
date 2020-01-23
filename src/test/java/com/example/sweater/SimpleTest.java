package com.example.sweater;


import org.junit.Assert;
import org.junit.Test;

public class SimpleTest {
    @Test
    public void test(){
        int x = 1;
        int y = 2;

        Assert.assertEquals(3, x+y);
    }
}
