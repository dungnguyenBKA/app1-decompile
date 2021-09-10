package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.UserManager;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.api.internal.a;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.l;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.g;
import com.google.firebase.components.i;
import com.google.firebase.components.n;
import com.google.firebase.components.w;
import com.vungle.warren.error.VungleException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;

public class c {
    private static final Object i = new Object();
    private static final Executor j = new d(null);
    @GuardedBy("LOCK")
    static final Map<String, c> k = new x();
    private final Context a;
    private final String b;
    private final i c;
    private final n d;
    private final AtomicBoolean e = new AtomicBoolean(false);
    private final AtomicBoolean f = new AtomicBoolean();
    private final w<q50> g;
    private final List<b> h = new CopyOnWriteArrayList();

    public interface b {
        void a(boolean z);
    }

    /* access modifiers changed from: private */
    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    /* renamed from: com.google.firebase.c$c  reason: collision with other inner class name */
    public static class C0083c implements a.AbstractC0045a {
        private static AtomicReference<C0083c> a = new AtomicReference<>();

        private C0083c() {
        }

        static void b(Context context) {
            if (context.getApplicationContext() instanceof Application) {
                Application application = (Application) context.getApplicationContext();
                if (a.get() == null) {
                    C0083c cVar = new C0083c();
                    if (a.compareAndSet(null, cVar)) {
                        com.google.android.gms.common.api.internal.a.c(application);
                        com.google.android.gms.common.api.internal.a.b().a(cVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.a.AbstractC0045a
        public void a(boolean z) {
            synchronized (c.i) {
                Iterator it = new ArrayList(c.k.values()).iterator();
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar.e.get()) {
                        cVar.s(z);
                    }
                }
            }
        }
    }

    private static class d implements Executor {
        private static final Handler b = new Handler(Looper.getMainLooper());

        d(a aVar) {
        }

        public void execute(Runnable runnable) {
            b.post(runnable);
        }
    }

    /* access modifiers changed from: private */
    @TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
    public static class e extends BroadcastReceiver {
        private static AtomicReference<e> b = new AtomicReference<>();
        private final Context a;

        public e(Context context) {
            this.a = context;
        }

        static void a(Context context) {
            if (b.get() == null) {
                e eVar = new e(context);
                if (b.compareAndSet(null, eVar)) {
                    context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void onReceive(Context context, Intent intent) {
            synchronized (c.i) {
                for (c cVar : c.k.values()) {
                    cVar.l();
                }
            }
            this.a.unregisterReceiver(this);
        }
    }

    protected c(Context context, String str, i iVar) {
        new CopyOnWriteArrayList();
        Objects.requireNonNull(context, "null reference");
        this.a = context;
        com.google.android.gms.common.internal.n.e(str);
        this.b = str;
        Objects.requireNonNull(iVar, "null reference");
        this.c = iVar;
        List<d50<i>> a2 = g.b(context, ComponentDiscoveryService.class).a();
        n.b d2 = n.d(j);
        d2.c(a2);
        d2.b(new FirebaseCommonRegistrar());
        d2.a(com.google.firebase.components.d.k(context, Context.class, new Class[0]));
        d2.a(com.google.firebase.components.d.k(this, c.class, new Class[0]));
        d2.a(com.google.firebase.components.d.k(iVar, i.class, new Class[0]));
        this.d = d2.d();
        this.g = new w<>(b.a(this, context));
    }

    private void e() {
        com.google.android.gms.common.internal.n.k(!this.f.get(), "FirebaseApp was deleted");
    }

    public static c h() {
        c cVar;
        synchronized (i) {
            cVar = k.get("[DEFAULT]");
            if (cVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + l.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return cVar;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void l() {
        if (!(Build.VERSION.SDK_INT >= 24 ? ((UserManager) this.a.getSystemService(UserManager.class)).isUserUnlocked() : true)) {
            StringBuilder q = ic.q("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            e();
            q.append(this.b);
            Log.i("FirebaseApp", q.toString());
            e.a(this.a);
            return;
        }
        StringBuilder q2 = ic.q("Device unlocked: initializing all Firebase APIs for app ");
        e();
        q2.append(this.b);
        Log.i("FirebaseApp", q2.toString());
        this.d.g(q());
    }

    public static c m(Context context) {
        synchronized (i) {
            if (k.containsKey("[DEFAULT]")) {
                return h();
            }
            i a2 = i.a(context);
            if (a2 == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return n(context, a2);
        }
    }

    public static c n(Context context, i iVar) {
        return o(context, iVar, "[DEFAULT]");
    }

    public static c o(Context context, i iVar, String str) {
        c cVar;
        C0083c.b(context);
        String trim = str.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (i) {
            Map<String, c> map = k;
            boolean z = !map.containsKey(trim);
            com.google.android.gms.common.internal.n.k(z, "FirebaseApp name " + trim + " already exists!");
            com.google.android.gms.common.internal.n.i(context, "Application context cannot be null.");
            cVar = new c(context, trim, iVar);
            map.put(trim, cVar);
        }
        cVar.l();
        return cVar;
    }

    static /* synthetic */ q50 r(c cVar, Context context) {
        return new q50(context, cVar.k(), (t40) cVar.d.a(t40.class));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void s(boolean z) {
        for (b bVar : this.h) {
            bVar.a(z);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        String str = this.b;
        c cVar = (c) obj;
        cVar.e();
        return str.equals(cVar.b);
    }

    public <T> T f(Class<T> cls) {
        e();
        return (T) this.d.a(cls);
    }

    public Context g() {
        e();
        return this.a;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String i() {
        e();
        return this.b;
    }

    public i j() {
        e();
        return this.c;
    }

    public String k() {
        String str;
        StringBuilder sb = new StringBuilder();
        e();
        byte[] bytes = this.b.getBytes(Charset.defaultCharset());
        String str2 = null;
        if (bytes == null) {
            str = null;
        } else {
            str = Base64.encodeToString(bytes, 11);
        }
        sb.append(str);
        sb.append("+");
        byte[] bytes2 = j().c().getBytes(Charset.defaultCharset());
        if (bytes2 != null) {
            str2 = Base64.encodeToString(bytes2, 11);
        }
        sb.append(str2);
        return sb.toString();
    }

    public boolean p() {
        e();
        return this.g.get().a();
    }

    public boolean q() {
        e();
        return "[DEFAULT]".equals(this.b);
    }

    public String toString() {
        m.a b2 = m.b(this);
        b2.a("name", this.b);
        b2.a("options", this.c);
        return b2.toString();
    }
}
