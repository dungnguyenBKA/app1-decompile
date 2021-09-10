package com.airbnb.lottie;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class p {
    private boolean a = false;
    private final Set<a> b = new z(0);
    private final Map<String, bc> c = new HashMap();

    public interface a {
        void a(float f);
    }

    public void a(String str, float f) {
        if (this.a) {
            bc bcVar = this.c.get(str);
            if (bcVar == null) {
                bcVar = new bc();
                this.c.put(str, bcVar);
            }
            bcVar.a(f);
            if (str.equals("__container")) {
                for (a aVar : this.b) {
                    aVar.a(f);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b(boolean z) {
        this.a = z;
    }
}
