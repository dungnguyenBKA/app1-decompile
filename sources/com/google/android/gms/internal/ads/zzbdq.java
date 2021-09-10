package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzbdq {
    private final ArrayList<zzou> zzeqk = new ArrayList<>();
    private long zzeql;

    zzbdq() {
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzou zzou) {
        this.zzeqk.add(zzou);
    }

    /* access modifiers changed from: package-private */
    public final long zzacn() {
        Iterator<zzou> it = this.zzeqk.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> responseHeaders = it.next().getResponseHeaders();
            if (responseHeaders != null) {
                for (Map.Entry<String, List<String>> entry : responseHeaders.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.zzeql = Math.max(this.zzeql, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        return this.zzeql;
    }
}
