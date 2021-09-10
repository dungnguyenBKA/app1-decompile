package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

public final class a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    private static final a f = new a();
    private final AtomicBoolean b = new AtomicBoolean();
    private final AtomicBoolean c = new AtomicBoolean();
    @GuardedBy("sInstance")
    private final ArrayList<AbstractC0045a> d = new ArrayList<>();
    @GuardedBy("sInstance")
    private boolean e = false;

    /* renamed from: com.google.android.gms.common.api.internal.a$a  reason: collision with other inner class name */
    public interface AbstractC0045a {
        void a(boolean z);
    }

    private a() {
    }

    public static a b() {
        return f;
    }

    public static void c(Application application) {
        a aVar = f;
        synchronized (aVar) {
            if (!aVar.e) {
                application.registerActivityLifecycleCallbacks(aVar);
                application.registerComponentCallbacks(aVar);
                aVar.e = true;
            }
        }
    }

    private final void e(boolean z) {
        synchronized (f) {
            ArrayList<AbstractC0045a> arrayList = this.d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                AbstractC0045a aVar = arrayList.get(i);
                i++;
                aVar.a(z);
            }
        }
    }

    public final void a(AbstractC0045a aVar) {
        synchronized (f) {
            this.d.add(aVar);
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    public final boolean d(boolean z) {
        if (!this.c.get()) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.b.set(true);
            }
        }
        return this.b.get();
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.b.compareAndSet(true, false);
        this.c.set(true);
        if (compareAndSet) {
            e(false);
        }
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.b.compareAndSet(true, false);
        this.c.set(true);
        if (compareAndSet) {
            e(false);
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void onConfigurationChanged(Configuration configuration) {
    }

    public final void onLowMemory() {
    }

    public final void onTrimMemory(int i) {
        if (i == 20 && this.b.compareAndSet(false, true)) {
            this.c.set(true);
            e(true);
        }
    }
}
