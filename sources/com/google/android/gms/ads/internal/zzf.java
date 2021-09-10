package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzcv;
import com.google.android.gms.internal.ads.zzds;
import com.google.android.gms.internal.ads.zzdsy;
import com.google.android.gms.internal.ads.zzdue;
import com.google.android.gms.internal.ads.zzdux;
import com.google.android.gms.internal.ads.zzdva;
import com.google.android.gms.internal.ads.zzdy;
import com.google.android.gms.internal.ads.zzef;
import com.google.android.gms.internal.ads.zzwr;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

public final class zzf implements zzdy, Runnable {
    private final List<Object[]> b = new Vector();
    private final AtomicReference<zzdy> c = new AtomicReference<>();
    private final AtomicReference<zzdy> d = new AtomicReference<>();
    private int e;
    private final boolean f;
    private final boolean g;
    private final Executor h;
    private final zzdsy i;
    private Context j;
    private final Context k;
    private zzazn l;
    private final zzazn m;
    private CountDownLatch n = new CountDownLatch(1);

    public zzf(Context context, zzazn zzazn) {
        this.j = context;
        this.k = context;
        this.l = zzazn;
        this.m = zzazn;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.h = newCachedThreadPool;
        zzdsy zza = zzdsy.zza(context, newCachedThreadPool);
        this.i = zza;
        this.g = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrs)).booleanValue();
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcru)).intValue();
        if (intValue == 1 || intValue == 2) {
            this.e = zzcv.zznk;
        } else {
            this.e = zzcv.zznj;
        }
        zzdue zzdue = new zzdue(this.j, zza);
        c cVar = new c(this);
        this.f = new zzdux(this.j, zzdue.zzayg(), cVar, ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrt)).booleanValue()).zzek(zzdva.zzhut);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsj)).booleanValue()) {
            zzazp.zzeic.execute(this);
            return;
        }
        zzwr.zzqn();
        if (zzaza.zzzx()) {
            zzazp.zzeic.execute(this);
        } else {
            run();
        }
    }

    private final zzdy d() {
        int i2;
        if (!this.g || this.f) {
            i2 = this.e;
        } else {
            i2 = zzcv.zznj;
        }
        if (i2 == zzcv.zznk) {
            return this.d.get();
        }
        return this.c.get();
    }

    private static Context e(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private final void f() {
        zzdy d2 = d();
        if (!(this.b.isEmpty() || d2 == null)) {
            for (Object[] objArr : this.b) {
                if (objArr.length == 1) {
                    d2.zza((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    d2.zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.b.clear();
        }
    }

    public final void run() {
        int i2;
        try {
            boolean z = !((Boolean) zzwr.zzqr().zzd(zzabp.zzcpp)).booleanValue() && this.l.zzeia;
            if (!this.g || this.f) {
                i2 = this.e;
            } else {
                i2 = zzcv.zznj;
            }
            if (i2 == zzcv.zznj) {
                this.c.set(zzef.zzb(this.l.zzbrp, e(this.j), z, this.e));
                if (this.e == zzcv.zznk) {
                    this.h.execute(new b(this, z));
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    this.d.set(zzds.zza(this.l.zzbrp, e(this.j), z));
                } catch (NullPointerException e2) {
                    this.e = zzcv.zznj;
                    this.c.set(zzef.zzb(this.l.zzbrp, e(this.j), z, this.e));
                    this.i.zza(2031, System.currentTimeMillis() - currentTimeMillis, e2);
                }
            }
        } finally {
            this.n.countDown();
            this.j = null;
            this.l = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view, Activity activity) {
        boolean z;
        zzdy d2;
        try {
            this.n.await();
            z = true;
        } catch (InterruptedException e2) {
            zzazk.zzd("Interrupted during GADSignals creation.", e2);
            z = false;
        }
        if (!z || (d2 = d()) == null) {
            return "";
        }
        f();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return d2.zza(context, str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zzb(Context context) {
        boolean z;
        zzdy d2;
        try {
            this.n.await();
            z = true;
        } catch (InterruptedException e2) {
            zzazk.zzd("Interrupted during GADSignals creation.", e2);
            z = false;
        }
        if (!z || (d2 = d()) == null) {
            return "";
        }
        f();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return d2.zzb(context);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, View view, Activity activity) {
        zzdy d2 = d();
        return d2 != null ? d2.zza(context, view, activity) : "";
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zzb(View view) {
        zzdy d2 = d();
        if (d2 != null) {
            d2.zzb(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(MotionEvent motionEvent) {
        zzdy d2 = d();
        if (d2 != null) {
            f();
            d2.zza(motionEvent);
            return;
        }
        this.b.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final void zza(int i2, int i3, int i4) {
        zzdy d2 = d();
        if (d2 != null) {
            f();
            d2.zza(i2, i3, i4);
            return;
        }
        this.b.add(new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)});
    }
}
