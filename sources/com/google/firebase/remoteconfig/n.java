package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import com.google.firebase.c;
import com.google.firebase.installations.g;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.e;
import com.google.firebase.remoteconfig.internal.k;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.q;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class n {
    private static final d j = f.d();
    private static final Random k = new Random();
    private final Map<String, f> a = new HashMap();
    private final Context b;
    private final ExecutorService c;
    private final c d;
    private final g e;
    private final com.google.firebase.abt.c f;
    private final vy g;
    private final String h;
    private Map<String, String> i = new HashMap();

    n(Context context, c cVar, g gVar, com.google.firebase.abt.c cVar2, vy vyVar) {
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.b = context;
        this.c = newCachedThreadPool;
        this.d = cVar;
        this.e = gVar;
        this.f = cVar2;
        this.g = vyVar;
        this.h = cVar.j().c();
        nw.b(newCachedThreadPool, l.a(this));
    }

    private e b(String str, String str2) {
        return e.e(Executors.newCachedThreadPool(), o.c(this.b, String.format("%s_%s_%s_%s.json", "frc", this.h, str, str2)));
    }

    private static boolean e(c cVar) {
        return cVar.i().equals("[DEFAULT]");
    }

    /* access modifiers changed from: package-private */
    public synchronized f a(c cVar, String str, g gVar, com.google.firebase.abt.c cVar2, Executor executor, e eVar, e eVar2, e eVar3, k kVar, m mVar, com.google.firebase.remoteconfig.internal.n nVar) {
        if (!this.a.containsKey(str)) {
            f fVar = new f(this.b, cVar, gVar, str.equals("firebase") && cVar.i().equals("[DEFAULT]") ? cVar2 : null, executor, eVar, eVar2, eVar3, kVar, mVar, nVar);
            fVar.k();
            this.a.put(str, fVar);
        }
        return this.a.get(str);
    }

    /* access modifiers changed from: package-private */
    public f c() {
        f a2;
        synchronized (this) {
            e b2 = b("firebase", "fetch");
            e b3 = b("firebase", "activate");
            e b4 = b("firebase", "defaults");
            com.google.firebase.remoteconfig.internal.n nVar = new com.google.firebase.remoteconfig.internal.n(this.b.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.h, "firebase", "settings"), 0));
            m mVar = new m(this.c, b3, b4);
            c cVar = this.d;
            vy vyVar = this.g;
            q qVar = (!cVar.i().equals("[DEFAULT]") || vyVar == null) ? null : new q(vyVar);
            if (qVar != null) {
                mVar.a(m.b(qVar));
            }
            a2 = a(this.d, "firebase", this.e, this.f, this.c, b2, b3, b4, d("firebase", b2, nVar), mVar, nVar);
        }
        return a2;
    }

    /* access modifiers changed from: package-private */
    public synchronized k d(String str, e eVar, com.google.firebase.remoteconfig.internal.n nVar) {
        return new k(this.e, e(this.d) ? this.g : null, this.c, j, k, eVar, new ConfigFetchHttpClient(this.b, this.d.j().c(), this.d.j().b(), str, nVar.b(), nVar.b()), nVar, this.i);
    }
}
