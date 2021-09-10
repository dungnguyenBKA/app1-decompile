package com.facebook.rebound;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class d {
    private static final d b = new d(true);
    private final Map<c, String> a;

    d(boolean z) {
        HashMap hashMap = new HashMap();
        this.a = hashMap;
        if (z) {
            c cVar = c.c;
            if (cVar == null) {
                throw new IllegalArgumentException("springConfig is required");
            } else if (!hashMap.containsKey(cVar)) {
                hashMap.put(cVar, "default config");
            }
        }
    }

    public static d b() {
        return b;
    }

    public Map<c, String> a() {
        return Collections.unmodifiableMap(this.a);
    }
}
