package defpackage;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

/* renamed from: ol  reason: default package */
public class ol {
    private static final ol b = new ol();
    private HashMap<String, nl> a = new HashMap<>();

    private ol() {
    }

    public static ol b() {
        return b;
    }

    public nl a(String str, int i, int i2, long j) {
        nl nlVar;
        if (this.a.containsKey(str) && (nlVar = this.a.get(str)) != null && !nlVar.r0()) {
            return nlVar;
        }
        try {
            nl t0 = nl.t0(new File(str), i, i2, j);
            this.a.put(str, t0);
            return t0;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
