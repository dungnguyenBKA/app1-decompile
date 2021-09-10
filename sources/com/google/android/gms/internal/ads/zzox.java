package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzox {
    private final Map<String, String> zzbjf = new HashMap();
    private Map<String, String> zzbjg;

    public final synchronized Map<String, String> zzis() {
        if (this.zzbjg == null) {
            this.zzbjg = Collections.unmodifiableMap(new HashMap(this.zzbjf));
        }
        return this.zzbjg;
    }
}
