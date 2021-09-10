package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.vungle.warren.error.VungleException;

/* access modifiers changed from: package-private */
@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: nr  reason: default package */
public final class nr implements Application.ActivityLifecycleCallbacks {
    private Activity b;
    private final jr c;

    private nr(jr jrVar) {
        this.c = jrVar;
    }

    static nr b(jr jrVar, Application application) {
        nr nrVar = new nr(jrVar);
        application.registerActivityLifecycleCallbacks(nrVar);
        return nrVar;
    }

    /* access modifiers changed from: package-private */
    public Activity a() {
        return this.b;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.b = activity;
    }

    public void onActivityDestroyed(Activity activity) {
        if (this.b == activity) {
            this.b = null;
        }
    }

    public void onActivityPaused(Activity activity) {
        if (this.c.b()) {
            this.c.a();
        }
    }

    public void onActivityResumed(Activity activity) {
        this.b = activity;
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        this.b = activity;
    }

    public void onActivityStopped(Activity activity) {
    }
}
