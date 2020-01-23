package com.example.sweater;


import com.example.sweater.DumbPasswordEncoder;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

public class DumbPasswordEncoderTest {


    @Test
    public void encode() {
        DumbPasswordEncoder dumbPasswordEncoder = new DumbPasswordEncoder();
        Assert.assertEquals("secret: 1", dumbPasswordEncoder.encode("1"));
    }
}
