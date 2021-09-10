package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.b;
import androidx.browser.customtabs.d;
import java.lang.ref.WeakReference;

public final class zzeqq extends d {
    private WeakReference<zzeqp> zzjcg;

    public zzeqq(zzeqp zzeqp) {
        this.zzjcg = new WeakReference<>(zzeqp);
    }

    @Override // androidx.browser.customtabs.d
    public final void onCustomTabsServiceConnected(ComponentName componentName, b bVar) {
        zzeqp zzeqp = this.zzjcg.get();
        if (zzeqp != null) {
            zzeqp.zza(bVar);
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        zzeqp zzeqp = this.zzjcg.get();
        if (zzeqp != null) {
            zzeqp.zzsw();
        }
    }
}
