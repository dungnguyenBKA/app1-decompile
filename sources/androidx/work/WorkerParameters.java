package androidx.work;

import android.net.Network;
import android.net.Uri;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

public final class WorkerParameters {
    private UUID a;
    private e b;
    private Set<String> c;
    private a d;
    private int e;
    private Executor f;
    private m6 g;
    private q h;

    public static class a {
        public List<String> a = Collections.emptyList();
        public List<Uri> b = Collections.emptyList();
        public Network c;
    }

    public WorkerParameters(UUID uuid, e eVar, Collection<String> collection, a aVar, int i, Executor executor, m6 m6Var, q qVar) {
        this.a = uuid;
        this.b = eVar;
        this.c = new HashSet(collection);
        this.d = aVar;
        this.e = i;
        this.f = executor;
        this.g = m6Var;
        this.h = qVar;
    }

    public Executor a() {
        return this.f;
    }

    public UUID b() {
        return this.a;
    }

    public e c() {
        return this.b;
    }

    public Network d() {
        return this.d.c;
    }

    public int e() {
        return this.e;
    }

    public Set<String> f() {
        return this.c;
    }

    public m6 g() {
        return this.g;
    }

    public List<String> h() {
        return this.d.a;
    }

    public List<Uri> i() {
        return this.d.b;
    }

    public q j() {
        return this.h;
    }
}
