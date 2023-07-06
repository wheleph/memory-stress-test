package com.procore.memorystress;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedList;
import java.util.List;

@RestController
public class MemoryStressController {

    private final List<Byte> byteBuffer = new LinkedList<>();

    @PostMapping("/fill")
    public String fillMemory(@RequestParam("size") long size) {
        byteBuffer.clear();

        for (long i = 0; i < size; i++) {
            byteBuffer.add((byte) (i % 100));
        }

        return "Done. Size: " + byteBuffer.size() + "\n";
    }

    @GetMapping("/value")
    public String getValue(@RequestParam("index") int index) {
        return "Value: " + byteBuffer.get(index) + "\n";
    }
}
