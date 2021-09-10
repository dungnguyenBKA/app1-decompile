package com.google.firebase.analytics.connector.internal;

import defpackage.vy;
import java.util.HashSet;
import java.util.Set;

public final class d {
    final Set<String> a = new HashSet();
    private final vy.b b;
    private final cw c;
    private final c d;

    public d(cw cwVar, vy.b bVar) {
        this.b = bVar;
        this.c = cwVar;
        c cVar = new c(this);
        this.d = cVar;
        cwVar.p(cVar);
    }
}
