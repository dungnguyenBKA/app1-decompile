package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import com.google.android.gms.common.util.d;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class i {
    private final c a;
    private final d b;
    private boolean c;
    private long d;
    private long e;
    private long f;
    private long g;
    private long h;
    private boolean i;
    private final Map<Class<? extends k>, k> j;
    private final List<s> k;

    i(i iVar) {
        this.a = iVar.a;
        this.b = iVar.b;
        this.d = iVar.d;
        this.e = iVar.e;
        this.f = iVar.f;
        this.g = iVar.g;
        this.h = iVar.h;
        this.k = new ArrayList(iVar.k);
        this.j = new HashMap(iVar.j.size());
        for (Map.Entry<Class<? extends k>, k> entry : iVar.j.entrySet()) {
            k n = n(entry.getKey());
            entry.getValue().zzc(n);
            this.j.put(entry.getKey(), n);
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    private static <T extends k> T n(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e2) {
            if (e2 instanceof InstantiationException) {
                throw new IllegalArgumentException("dataType doesn't have default constructor", e2);
            } else if (e2 instanceof IllegalAccessException) {
                throw new IllegalArgumentException("dataType default constructor is not accessible", e2);
            } else if (e2 instanceof ReflectiveOperationException) {
                throw new IllegalArgumentException("Linkage exception", e2);
            } else {
                throw new RuntimeException(e2);
            }
        }
    }

    public final long a() {
        return this.d;
    }

    public final <T extends k> T b(Class<T> cls) {
        T t = (T) this.j.get(cls);
        if (t != null) {
            return t;
        }
        T t2 = (T) n(cls);
        this.j.put(cls, t2);
        return t2;
    }

    public final <T extends k> T c(Class<T> cls) {
        return (T) this.j.get(cls);
    }

    /* access modifiers changed from: package-private */
    public final c d() {
        return this.a;
    }

    public final Collection<k> e() {
        return this.j.values();
    }

    public final List<s> f() {
        return this.k;
    }

    public final void g(k kVar) {
        Objects.requireNonNull(kVar, "null reference");
        Class<?> cls = kVar.getClass();
        if (cls.getSuperclass() == k.class) {
            kVar.zzc(b(cls));
            return;
        }
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: package-private */
    public final void h() {
        this.i = true;
    }

    /* access modifiers changed from: package-private */
    public final void i() {
        this.f = this.b.b();
        long j2 = this.e;
        if (j2 != 0) {
            this.d = j2;
        } else {
            this.d = this.b.a();
        }
        this.c = true;
    }

    public final void j(long j2) {
        this.e = j2;
    }

    public final void k() {
        this.a.f().k(this);
    }

    /* access modifiers changed from: package-private */
    public final boolean l() {
        return this.i;
    }

    public final boolean m() {
        return this.c;
    }

    i(c cVar, d dVar) {
        Objects.requireNonNull(dVar, "null reference");
        this.a = cVar;
        this.b = dVar;
        this.g = 1800000;
        this.h = 3024000000L;
        this.j = new HashMap();
        this.k = new ArrayList();
    }
}
