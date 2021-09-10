package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzbp;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class zzqs implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final long zzbrd = ((Long) zzwr.zzqr().zzd(zzabp.zzcqr)).longValue();
    private final Context zzaad;
    private final PowerManager zzaae;
    private final KeyguardManager zzaaf;
    private WeakReference<ViewTreeObserver> zzaah;
    private int zzaal = -1;
    private final WindowManager zzbre;
    private BroadcastReceiver zzbrf;
    private WeakReference<View> zzbrg;
    private zzqz zzbrh;
    private zzbp zzbri = new zzbp(zzbrd);
    private boolean zzbrj = false;
    private final HashSet<zzqw> zzbrk = new HashSet<>();
    private final Rect zzbrl;
    private final DisplayMetrics zzwz;
    private Application zzyd;

    public zzqs(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.zzaad = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.zzbre = windowManager;
        this.zzaae = (PowerManager) applicationContext.getSystemService("power");
        this.zzaaf = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.zzyd = (Application) applicationContext;
            this.zzbrh = new zzqz((Application) applicationContext, this);
        }
        this.zzwz = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.zzbrl = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference<View> weakReference = this.zzbrg;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzg(view2);
        }
        this.zzbrg = new WeakReference<>(view);
        if (view != null) {
            if (zzr.zzkt().isAttachedToWindow(view)) {
                zzf(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00fc  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0103  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0133 A[LOOP:0: B:63:0x012d->B:65:0x0133, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzbr(int r32) {
        /*
        // Method dump skipped, instructions count: 320
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqs.zzbr(int):void");
    }

    private final int zzbs(int i) {
        return (int) (((float) i) / this.zzwz.density);
    }

    private final void zzct() {
        zzj.zzeen.post(new zzqv(this));
    }

    private final void zzf(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzaah = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzbrf == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzbrf = new zzqu(this);
            zzr.zzlm().zza(this.zzaad, this.zzbrf, intentFilter);
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzbrh);
            } catch (Exception e) {
                zzazk.zzc("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private final void zzg(View view) {
        try {
            WeakReference<ViewTreeObserver> weakReference = this.zzaah;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzaah = null;
            }
        } catch (Exception e) {
            zzazk.zzc("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzazk.zzc("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.zzbrf != null) {
            try {
                zzr.zzlm().zza(this.zzaad, this.zzbrf);
            } catch (IllegalStateException e3) {
                zzazk.zzc("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzr.zzkv().zza(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.zzbrf = null;
        }
        Application application = this.zzyd;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzbrh);
            } catch (Exception e5) {
                zzazk.zzc("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    private final List<Rect> zzi(View view) {
        try {
            ArrayList arrayList = new ArrayList();
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                View view2 = (View) parent;
                Rect rect = new Rect();
                if (view2.isScrollContainer() && view2.getGlobalVisibleRect(rect)) {
                    arrayList.add(zza(rect));
                }
            }
            return arrayList;
        } catch (Exception e) {
            zzr.zzkv().zza(e, "PositionWatcher.getParentScrollViewRects");
            return Collections.emptyList();
        }
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzbr(3);
        zzct();
    }

    public final void onActivityDestroyed(Activity activity) {
        zzbr(3);
        zzct();
    }

    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzbr(3);
        zzct();
    }

    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzbr(3);
        zzct();
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzbr(3);
        zzct();
    }

    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzbr(3);
        zzct();
    }

    public final void onActivityStopped(Activity activity) {
        zzbr(3);
        zzct();
    }

    public final void onGlobalLayout() {
        zzbr(2);
        zzct();
    }

    public final void onScrollChanged() {
        zzbr(1);
    }

    public final void onViewAttachedToWindow(View view) {
        this.zzaal = -1;
        zzf(view);
        zzbr(3);
    }

    public final void onViewDetachedFromWindow(View view) {
        this.zzaal = -1;
        zzbr(3);
        zzct();
        zzg(view);
    }

    public final void zza(zzqw zzqw) {
        this.zzbrk.add(zzqw);
        zzbr(3);
    }

    public final void zzb(zzqw zzqw) {
        this.zzbrk.remove(zzqw);
    }

    public final void zzen(long j) {
        this.zzbri.zzfb(j);
    }

    public final void zzlt() {
        this.zzbri.zzfb(zzbrd);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzlu() {
        zzbr(3);
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzbrg != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View view = this.zzbrg.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.zzaal = i;
            }
        }
    }

    private final Rect zza(Rect rect) {
        return new Rect(zzbs(rect.left), zzbs(rect.top), zzbs(rect.right), zzbs(rect.bottom));
    }
}
