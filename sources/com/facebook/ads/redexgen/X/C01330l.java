package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
/* renamed from: com.facebook.ads.redexgen.X.0l  reason: invalid class name and case insensitive filesystem */
public class C01330l implements Application.ActivityLifecycleCallbacks {
    @Nullable
    public C01340m A00;
    public final WeakReference<Activity> A01;

    public C01330l(Activity activity, C01340m r3) {
        this.A01 = new WeakReference<>(activity);
        this.A00 = r3;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        if (this.A00 != null) {
            Activity activity2 = this.A01.get();
            if (activity2 == null || activity.equals(activity2)) {
                this.A00.A06();
                this.A00 = null;
            }
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }
}
