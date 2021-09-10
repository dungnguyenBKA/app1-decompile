package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.vungle.warren.error.VungleException;

/* access modifiers changed from: package-private */
@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class k6 implements Application.ActivityLifecycleCallbacks {
    final /* synthetic */ l6 b;

    /* synthetic */ k6(l6 l6Var) {
        this.b = l6Var;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        j4 j4Var;
        try {
            this.b.a.c().v().a("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent == null) {
                j4Var = this.b.a;
            } else {
                Uri data = intent.getData();
                if (data == null || !data.isHierarchical()) {
                    j4Var = this.b.a;
                } else {
                    this.b.a.E();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    boolean z = true;
                    String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                    String queryParameter = data.getQueryParameter("referrer");
                    if (bundle != null) {
                        z = false;
                    }
                    this.b.a.e().q(new j6(this, z, data, str, queryParameter));
                    j4Var = this.b.a;
                }
            }
        } catch (Exception e) {
            this.b.a.c().n().b("Throwable caught in onActivityCreated", e);
            j4Var = this.b.a;
        } catch (Throwable th) {
            this.b.a.O().y(activity, bundle);
            throw th;
        }
        j4Var.O().y(activity, bundle);
    }

    public final void onActivityDestroyed(Activity activity) {
        this.b.a.O().C(activity);
    }

    public final void onActivityPaused(Activity activity) {
        this.b.a.O().A(activity);
        o8 A = this.b.a.A();
        A.a.e().q(new h8(A, A.a.a().b()));
    }

    public final void onActivityResumed(Activity activity) {
        o8 A = this.b.a.A();
        A.a.e().q(new g8(A, A.a.a().b()));
        this.b.a.O().z(activity);
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.b.a.O().B(activity, bundle);
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }
}
