package com.google.firebase.components;

import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class t implements Runnable {
    private final Map.Entry b;
    private final r40 c;

    private t(Map.Entry entry, r40 r40) {
        this.b = entry;
        this.c = r40;
    }

    public static Runnable a(Map.Entry entry, r40 r40) {
        return new t(entry, r40);
    }

    public void run() {
        Map.Entry entry = this.b;
        ((s40) entry.getKey()).a(this.c);
    }
}
