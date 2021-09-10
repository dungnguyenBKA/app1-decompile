package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.internal.m6;
import com.google.firebase.installations.f;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics b;
    private final zzbr a;

    public FirebaseAnalytics(zzbr zzbr) {
        Objects.requireNonNull(zzbr, "null reference");
        this.a = zzbr;
    }

    @Keep
    public static FirebaseAnalytics getInstance(@RecentlyNonNull Context context) {
        if (b == null) {
            synchronized (FirebaseAnalytics.class) {
                if (b == null) {
                    b = new FirebaseAnalytics(zzbr.zza(context, null, null, null, null));
                }
            }
        }
        return b;
    }

    @Keep
    public static m6 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzbr zza = zzbr.zza(context, null, null, null, bundle);
        if (zza == null) {
            return null;
        }
        return new a(zza);
    }

    public void a(@RecentlyNonNull String str, Bundle bundle) {
        this.a.zzg(str, bundle);
    }

    @RecentlyNonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) nw.a(f.f().getId(), 30000, TimeUnit.MILLISECONDS);
        } catch (ExecutionException e) {
            throw new IllegalStateException(e.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        } catch (InterruptedException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(@RecentlyNonNull Activity activity, String str, String str2) {
        this.a.zzo(activity, str, str2);
    }
}
