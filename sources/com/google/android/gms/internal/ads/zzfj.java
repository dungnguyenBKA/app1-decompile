package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;

public final class zzfj implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final Handler zzaac = new Handler(Looper.getMainLooper());
    private final Context zzaad;
    private final PowerManager zzaae;
    private final KeyguardManager zzaaf;
    private BroadcastReceiver zzaag;
    private WeakReference<ViewTreeObserver> zzaah;
    private WeakReference<View> zzaai;
    private zzel zzaaj;
    private byte zzaak = -1;
    private int zzaal = -1;
    private long zzaam = -3;
    private Application zzyd;
    private final zzfa zzyp;

    public zzfj(Context context, zzfa zzfa) {
        Context applicationContext = context.getApplicationContext();
        this.zzaad = applicationContext;
        this.zzyp = zzfa;
        this.zzaae = (PowerManager) applicationContext.getSystemService("power");
        this.zzaaf = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.zzyd = (Application) applicationContext;
            this.zzaaj = new zzel((Application) applicationContext, this);
        }
        zze(null);
    }

    private final View getCurrentView() {
        WeakReference<View> weakReference = this.zzaai;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzaai != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View currentView = getCurrentView();
            if (currentView != null && peekDecorView != null && currentView.getRootView() == peekDecorView.getRootView()) {
                this.zzaal = i;
            }
        }
    }

    private final void zzct() {
        zzaac.post(new zzfm(this));
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0064, code lost:
        if (r7 == false) goto L_0x0067;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzcv() {
        /*
        // Method dump skipped, instructions count: 170
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfj.zzcv():void");
    }

    private final void zzf(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzaah = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzaag == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            zzfl zzfl = new zzfl(this);
            this.zzaag = zzfl;
            this.zzaad.registerReceiver(zzfl, intentFilter);
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzaaj);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(11:0|1|2|(3:4|(1:8)|9)|10|11|(1:13)|15|(3:17|18|19)|21|(3:23|24|26)(1:28)) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x001b */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0025 A[Catch:{ Exception -> 0x002c }] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0031 A[SYNTHETIC, Splitter:B:17:0x0031] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003c A[SYNTHETIC, Splitter:B:23:0x003c] */
    /* JADX WARNING: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzg(android.view.View r4) {
        /*
            r3 = this;
            r0 = 0
            java.lang.ref.WeakReference<android.view.ViewTreeObserver> r1 = r3.zzaah     // Catch:{ Exception -> 0x001b }
            if (r1 == 0) goto L_0x001b
            java.lang.Object r1 = r1.get()     // Catch:{ Exception -> 0x001b }
            android.view.ViewTreeObserver r1 = (android.view.ViewTreeObserver) r1     // Catch:{ Exception -> 0x001b }
            if (r1 == 0) goto L_0x0019
            boolean r2 = r1.isAlive()     // Catch:{ Exception -> 0x001b }
            if (r2 == 0) goto L_0x0019
            r1.removeOnScrollChangedListener(r3)     // Catch:{ Exception -> 0x001b }
            r1.removeGlobalOnLayoutListener(r3)     // Catch:{ Exception -> 0x001b }
        L_0x0019:
            r3.zzaah = r0     // Catch:{ Exception -> 0x001b }
        L_0x001b:
            android.view.ViewTreeObserver r4 = r4.getViewTreeObserver()     // Catch:{ Exception -> 0x002c }
            boolean r1 = r4.isAlive()     // Catch:{ Exception -> 0x002c }
            if (r1 == 0) goto L_0x002d
            r4.removeOnScrollChangedListener(r3)     // Catch:{ Exception -> 0x002c }
            r4.removeGlobalOnLayoutListener(r3)     // Catch:{ Exception -> 0x002c }
            goto L_0x002d
        L_0x002c:
        L_0x002d:
            android.content.BroadcastReceiver r4 = r3.zzaag
            if (r4 == 0) goto L_0x0038
            android.content.Context r1 = r3.zzaad     // Catch:{ Exception -> 0x0036 }
            r1.unregisterReceiver(r4)     // Catch:{ Exception -> 0x0036 }
        L_0x0036:
            r3.zzaag = r0
        L_0x0038:
            android.app.Application r4 = r3.zzyd
            if (r4 == 0) goto L_0x0041
            com.google.android.gms.internal.ads.zzel r0 = r3.zzaaj     // Catch:{ Exception -> 0x0041 }
            r4.unregisterActivityLifecycleCallbacks(r0)     // Catch:{ Exception -> 0x0041 }
        L_0x0041:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfj.zzg(android.view.View):void");
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzcv();
    }

    public final void onActivityDestroyed(Activity activity) {
        zzcv();
    }

    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzcv();
    }

    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzcv();
        zzct();
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzcv();
    }

    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzcv();
    }

    public final void onActivityStopped(Activity activity) {
        zzcv();
    }

    public final void onGlobalLayout() {
        zzcv();
    }

    public final void onScrollChanged() {
        zzcv();
    }

    public final void onViewAttachedToWindow(View view) {
        this.zzaal = -1;
        zzf(view);
        zzcv();
    }

    public final void onViewDetachedFromWindow(View view) {
        this.zzaal = -1;
        zzcv();
        zzct();
        zzg(view);
    }

    public final long zzcu() {
        if (this.zzaam <= -2 && getCurrentView() == null) {
            this.zzaam = -3;
        }
        return this.zzaam;
    }

    /* access modifiers changed from: package-private */
    public final void zze(View view) {
        View currentView = getCurrentView();
        if (currentView != null) {
            currentView.removeOnAttachStateChangeListener(this);
            zzg(currentView);
        }
        this.zzaai = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                zzf(view);
            }
            view.addOnAttachStateChangeListener(this);
            this.zzaam = -2;
            return;
        }
        this.zzaam = -3;
    }
}
