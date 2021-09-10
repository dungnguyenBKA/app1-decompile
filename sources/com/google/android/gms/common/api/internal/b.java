package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.base.zap;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

public class b implements Handler.Callback {
    public static final Status k = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status l = new Status(4, "The user must be signed in to make this API call.");
    private static final Object m = new Object();
    @GuardedBy("lock")
    private static b n;
    private long b = 10000;
    private final Context c;
    private final c d;
    private final g e;
    private final AtomicInteger f;
    private final Map<j<?>, a<?>> g;
    @GuardedBy("lock")
    private final Set<j<?>> h;
    private final Set<j<?>> i;
    private final Handler j;

    public class a<O> {
        private final Queue<f> a = new LinkedList();
        private final Set<k> b = new HashSet();
        private final Map<Object<?>, Object> c = new HashMap();
        private boolean d;
        private final List<C0046b> e = new ArrayList();
        private ConnectionResult f = null;

        public a(com.google.android.gms.common.api.a<O> aVar) {
            b.this.j.getLooper();
            com.google.android.gms.common.internal.c cVar = new com.google.android.gms.common.internal.c();
            cVar.b(null);
            cVar.a(Collections.emptySet());
            throw null;
        }

        static void c(a aVar, C0046b bVar) {
            if (aVar.e.contains(bVar) && !aVar.d) {
                throw null;
            }
        }

        static void e(a aVar, C0046b bVar) {
            Feature[] c2;
            if (aVar.e.remove(bVar)) {
                b.this.j.removeMessages(15, bVar);
                b.this.j.removeMessages(16, bVar);
                Feature feature = bVar.b;
                ArrayList arrayList = new ArrayList(aVar.a.size());
                for (f fVar : aVar.a) {
                    if ((fVar instanceof i) && (c2 = ((i) fVar).c(aVar)) != null && androidx.core.app.b.r(c2, feature)) {
                        arrayList.add(fVar);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    f fVar2 = (f) obj;
                    aVar.a.remove(fVar2);
                    fVar2.b(new com.google.android.gms.common.api.b(feature));
                }
            }
        }

        private final void g() {
            if (this.d) {
                b.this.j.removeMessages(11, null);
                b.this.j.removeMessages(9, null);
                this.d = false;
            }
        }

        public final void a() {
            n.c(b.this.j);
            throw null;
        }

        public final void b() {
            n.c(b.this.j);
            if (this.d) {
                a();
                throw null;
            }
        }

        public final void d() {
            Status status;
            n.c(b.this.j);
            if (this.d) {
                g();
                if (b.this.d.d(b.this.c) == 18) {
                    status = new Status(8, "Connection timed out while waiting for Google Play services update to complete.");
                } else {
                    status = new Status(8, "API failed to connect while resuming due to an unknown error.");
                }
                h(status);
                throw null;
            }
        }

        public final void f() {
            n.c(b.this.j);
            this.f = null;
        }

        public final void h(Status status) {
            n.c(b.this.j);
            for (f fVar : this.a) {
                fVar.a(status);
            }
            this.a.clear();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.api.internal.b$b  reason: collision with other inner class name */
    public static class C0046b {
        private final j<?> a;
        private final Feature b;

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof C0046b)) {
                C0046b bVar = (C0046b) obj;
                if (!m.a(this.a, bVar.a) || !m.a(this.b, bVar.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b});
        }

        public final String toString() {
            m.a b2 = m.b(this);
            b2.a("key", this.a);
            b2.a("feature", this.b);
            return b2.toString();
        }
    }

    private b(Context context, Looper looper, c cVar) {
        new AtomicInteger(1);
        this.f = new AtomicInteger(0);
        this.g = new ConcurrentHashMap(5, 0.75f, 1);
        this.h = new z(0);
        this.i = new z(0);
        this.c = context;
        zap zap = new zap(looper, this);
        this.j = zap;
        this.d = cVar;
        this.e = new g(cVar);
        zap.sendMessage(zap.obtainMessage(6));
    }

    public static b d(Context context) {
        b bVar;
        synchronized (m) {
            if (n == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                n = new b(context.getApplicationContext(), handlerThread.getLooper(), c.g());
            }
            bVar = n;
        }
        return bVar;
    }

    private final void e(com.google.android.gms.common.api.a<?> aVar) {
        Objects.requireNonNull(aVar);
        if (this.g.get(null) == null) {
            new a(aVar);
            throw null;
        }
        throw null;
    }

    public final void b(ConnectionResult connectionResult, int i2) {
        if (!this.d.m(this.c, connectionResult, i2)) {
            Handler handler = this.j;
            handler.sendMessage(handler.obtainMessage(5, i2, 0, connectionResult));
        }
    }

    public final void g() {
        Handler handler = this.j;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public boolean handleMessage(Message message) {
        int i2 = message.what;
        long j2 = 300000;
        a<?> aVar = null;
        switch (i2) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    j2 = 10000;
                }
                this.b = j2;
                this.j.removeMessages(12);
                for (j<?> jVar : this.g.keySet()) {
                    Handler handler = this.j;
                    handler.sendMessageDelayed(handler.obtainMessage(12, jVar), this.b);
                }
                break;
            case 2:
                Objects.requireNonNull((k) message.obj);
                throw null;
            case 3:
                Iterator<a<?>> it = this.g.values().iterator();
                if (it.hasNext()) {
                    a<?> next = it.next();
                    next.f();
                    next.a();
                    throw null;
                }
                break;
            case 4:
            case 8:
            case 13:
                Objects.requireNonNull((h) message.obj);
                throw null;
            case 5:
                int i3 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<a<?>> it2 = this.g.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        a<?> next2 = it2.next();
                        Objects.requireNonNull(next2);
                        if (i3 == 0) {
                            aVar = next2;
                        }
                    }
                }
                if (aVar != null) {
                    c cVar = this.d;
                    int o = connectionResult.o();
                    Objects.requireNonNull(cVar);
                    String errorString = com.google.android.gms.common.g.getErrorString(o);
                    String i0 = connectionResult.i0();
                    StringBuilder sb = new StringBuilder(String.valueOf(i0).length() + String.valueOf(errorString).length() + 69);
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(errorString);
                    sb.append(": ");
                    sb.append(i0);
                    aVar.h(new Status(17, sb.toString()));
                    break;
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i3);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                    break;
                }
            case 6:
                if (this.c.getApplicationContext() instanceof Application) {
                    a.c((Application) this.c.getApplicationContext());
                    a.b().a(new g(this));
                    if (!a.b().d(true)) {
                        this.b = 300000;
                        break;
                    }
                }
                break;
            case 7:
                e((com.google.android.gms.common.api.a) message.obj);
                throw null;
            case 9:
                if (this.g.containsKey(message.obj)) {
                    this.g.get(message.obj).b();
                    break;
                }
                break;
            case 10:
                Iterator<j<?>> it3 = this.i.iterator();
                if (!it3.hasNext()) {
                    this.i.clear();
                    break;
                } else {
                    a<?> remove = this.g.remove(it3.next());
                    n.c(b.this.j);
                    remove.h(k);
                    throw null;
                }
            case 11:
                if (this.g.containsKey(message.obj)) {
                    this.g.get(message.obj).d();
                    break;
                }
                break;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                if (this.g.containsKey(message.obj)) {
                    n.c(b.this.j);
                    throw null;
                }
                break;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                Objects.requireNonNull((e) message.obj);
                if (!this.g.containsKey(null)) {
                    throw null;
                }
                n.c(b.this.j);
                throw null;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                C0046b bVar = (C0046b) message.obj;
                if (this.g.containsKey(bVar.a)) {
                    a.c(this.g.get(bVar.a), bVar);
                    break;
                }
                break;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                C0046b bVar2 = (C0046b) message.obj;
                if (this.g.containsKey(bVar2.a)) {
                    a.e(this.g.get(bVar2.a), bVar2);
                    break;
                }
                break;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
        return true;
    }
}
