package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Looper;
import android.util.Log;
import defpackage.i4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public abstract class g {
    @Deprecated
    protected volatile h4 a;
    private Executor b;
    private i4 c;
    private final e d;
    private boolean e;
    boolean f;
    @Deprecated
    protected List<b> g;
    private final ReentrantReadWriteLock h = new ReentrantReadWriteLock();
    private final ThreadLocal<Integer> i = new ThreadLocal<>();

    public static class a<T extends g> {
        private final Class<T> a;
        private final String b;
        private final Context c;
        private ArrayList<b> d;
        private Executor e;
        private Executor f;
        private i4.c g;
        private boolean h;
        private boolean i = true;
        private boolean j;
        private final d k = new d();
        private Set<Integer> l;

        a(Context context, Class<T> cls, String str) {
            this.c = context;
            this.a = cls;
            this.b = str;
        }

        public a<T> a(b bVar) {
            if (this.d == null) {
                this.d = new ArrayList<>();
            }
            this.d.add(bVar);
            return this;
        }

        public a<T> b(d4... d4VarArr) {
            if (this.l == null) {
                this.l = new HashSet();
            }
            for (d4 d4Var : d4VarArr) {
                this.l.add(Integer.valueOf(d4Var.a));
                this.l.add(Integer.valueOf(d4Var.b));
            }
            this.k.a(d4VarArr);
            return this;
        }

        public a<T> c() {
            this.h = true;
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        public T d() {
            c cVar;
            String str;
            Executor executor;
            if (this.c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            } else if (this.a != null) {
                Executor executor2 = this.e;
                if (executor2 == null && this.f == null) {
                    Executor d2 = s.d();
                    this.f = d2;
                    this.e = d2;
                } else if (executor2 != null && this.f == null) {
                    this.f = executor2;
                } else if (executor2 == null && (executor = this.f) != null) {
                    this.e = executor;
                }
                if (this.g == null) {
                    this.g = new o4();
                }
                Context context = this.c;
                String str2 = this.b;
                i4.c cVar2 = this.g;
                d dVar = this.k;
                ArrayList<b> arrayList = this.d;
                boolean z = this.h;
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                if (activityManager == null || activityManager.isLowRamDevice()) {
                    cVar = c.TRUNCATE;
                } else {
                    cVar = c.WRITE_AHEAD_LOGGING;
                }
                a aVar = new a(context, str2, cVar2, dVar, arrayList, z, cVar, this.e, this.f, false, this.i, this.j, null);
                Class<T> cls = this.a;
                String name = cls.getPackage().getName();
                String canonicalName = cls.getCanonicalName();
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String str3 = canonicalName.replace('.', '_') + "_Impl";
                try {
                    if (name.isEmpty()) {
                        str = str3;
                    } else {
                        str = name + "." + str3;
                    }
                    T t = (T) ((g) Class.forName(str).newInstance());
                    t.l(aVar);
                    return t;
                } catch (ClassNotFoundException unused) {
                    StringBuilder q = ic.q("cannot find implementation for ");
                    q.append(cls.getCanonicalName());
                    q.append(". ");
                    q.append(str3);
                    q.append(" does not exist");
                    throw new RuntimeException(q.toString());
                } catch (IllegalAccessException unused2) {
                    StringBuilder q2 = ic.q("Cannot access the constructor");
                    q2.append(cls.getCanonicalName());
                    throw new RuntimeException(q2.toString());
                } catch (InstantiationException unused3) {
                    StringBuilder q3 = ic.q("Failed to create an instance of ");
                    q3.append(cls.getCanonicalName());
                    throw new RuntimeException(q3.toString());
                }
            } else {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
        }

        public a<T> e() {
            this.i = false;
            this.j = true;
            return this;
        }

        public a<T> f(Executor executor) {
            this.e = executor;
            return this;
        }
    }

    public static abstract class b {
        public void a(h4 h4Var) {
        }
    }

    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING
    }

    public static class d {
        private f0<f0<d4>> a = new f0<>(10);

        public void a(d4... d4VarArr) {
            for (d4 d4Var : d4VarArr) {
                int i = d4Var.a;
                int i2 = d4Var.b;
                f0<d4> e = this.a.e(i);
                if (e == null) {
                    e = new f0<>(10);
                    this.a.j(i, e);
                }
                d4 e2 = e.e(i2);
                if (e2 != null) {
                    Log.w("ROOM", "Overriding migration " + e2 + " with " + d4Var);
                }
                e.a(i2, d4Var);
            }
        }

        public List<d4> b(int i, int i2) {
            int i3;
            int i4;
            boolean z;
            if (i == i2) {
                return Collections.emptyList();
            }
            boolean z2 = i2 > i;
            ArrayList arrayList = new ArrayList();
            int i5 = z2 ? -1 : 1;
            do {
                if (z2) {
                    if (i >= i2) {
                        return arrayList;
                    }
                } else if (i <= i2) {
                    return arrayList;
                }
                f0<d4> e = this.a.e(i);
                if (e != null) {
                    int l = e.l();
                    if (z2) {
                        i4 = l - 1;
                        i3 = -1;
                    } else {
                        i3 = l;
                        i4 = 0;
                    }
                    while (true) {
                        if (i4 == i3) {
                            z = false;
                            continue;
                            break;
                        }
                        int i6 = e.i(i4);
                        if (!z2 ? !(i6 < i2 || i6 >= i) : !(i6 > i2 || i6 <= i)) {
                            arrayList.add(e.m(i4));
                            i = i6;
                            z = true;
                            continue;
                            break;
                        }
                        i4 += i5;
                    }
                } else {
                    break;
                }
            } while (z);
            return null;
        }
    }

    public g() {
        new ConcurrentHashMap();
        this.d = e();
    }

    public void a() {
        if (!this.e) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
            }
        }
    }

    public void b() {
        if (!k() && this.i.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void c() {
        a();
        h4 b2 = this.c.b();
        this.d.e(b2);
        b2.b();
    }

    public l4 d(String str) {
        a();
        b();
        return this.c.b().l(str);
    }

    /* access modifiers changed from: protected */
    public abstract e e();

    /* access modifiers changed from: protected */
    public abstract i4 f(a aVar);

    @Deprecated
    public void g() {
        this.c.b().G();
        if (!k()) {
            e eVar = this.d;
            if (eVar.e.compareAndSet(false, true)) {
                eVar.d.j().execute(eVar.j);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public Lock h() {
        return this.h.readLock();
    }

    public i4 i() {
        return this.c;
    }

    public Executor j() {
        return this.b;
    }

    public boolean k() {
        return this.c.b().R();
    }

    public void l(a aVar) {
        i4 f2 = f(aVar);
        this.c = f2;
        boolean z = aVar.g == c.WRITE_AHEAD_LOGGING;
        f2.a(z);
        this.g = aVar.e;
        this.b = aVar.h;
        new k(aVar.i);
        this.e = aVar.f;
        this.f = z;
    }

    /* access modifiers changed from: protected */
    public void m(h4 h4Var) {
        this.d.b(h4Var);
    }

    public Cursor n(k4 k4Var) {
        a();
        b();
        return this.c.b().M(k4Var);
    }

    @Deprecated
    public void o() {
        this.c.b().A();
    }
}
