package com.google.android.gms.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.internal.gtm.zzav;
import com.google.android.gms.internal.gtm.zzba;
import com.google.android.gms.internal.gtm.zzfs;
import java.lang.Thread;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

@SuppressLint({"StaticFieldLeak"})
public final class q {
    private static volatile q f;
    private final Context a;
    private final List<r> b = new CopyOnWriteArrayList();
    private final n c = new n(this);
    private volatile zzav d;
    private Thread.UncaughtExceptionHandler e;

    q(Context context) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.a = applicationContext;
        new h();
    }

    public static q b(Context context) {
        if (f == null) {
            synchronized (q.class) {
                if (f == null) {
                    f = new q(context);
                }
            }
        }
        return f;
    }

    public static void h() {
        if (!(Thread.currentThread() instanceof p)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final Context a() {
        return this.a;
    }

    public final zzav c() {
        if (this.d == null) {
            synchronized (this) {
                if (this.d == null) {
                    zzav zzav = new zzav();
                    PackageManager packageManager = this.a.getPackageManager();
                    String packageName = this.a.getPackageName();
                    zzav.zzi(packageName);
                    zzav.zzj(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.a.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        String valueOf = String.valueOf(packageName);
                        Log.e("GAv4", valueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(valueOf) : new String("Error retrieving package info: appName set to "));
                    }
                    zzav.zzk(packageName);
                    zzav.zzl(str);
                    this.d = zzav;
                }
            }
        }
        return this.d;
    }

    public final zzba d() {
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        zzba zzba = new zzba();
        zzba.zze(zzfs.zzd(Locale.getDefault()));
        zzba.zza = displayMetrics.widthPixels;
        zzba.zzb = displayMetrics.heightPixels;
        return zzba;
    }

    public final <V> Future<V> g(Callable<V> callable) {
        if (!(Thread.currentThread() instanceof p)) {
            return this.c.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    public final void i(Runnable runnable) {
        this.c.submit(runnable);
    }

    public final void j(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.e = uncaughtExceptionHandler;
    }

    /* access modifiers changed from: package-private */
    public final void k(i iVar) {
        if (iVar.l()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        } else if (!iVar.m()) {
            i iVar2 = new i(iVar);
            iVar2.i();
            this.c.execute(new l(this, iVar2));
        } else {
            throw new IllegalStateException("Measurement can only be submitted once");
        }
    }
}
