package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzc;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class y0 implements Callable<Integer> {
    private final /* synthetic */ String b;
    private final /* synthetic */ d c;

    y0(d dVar, String str) {
        this.c = dVar;
        this.b = str;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final Integer call() {
        zzc zzc = this.c.g;
        String packageName = this.c.f.getPackageName();
        String str = this.b;
        Bundle bundle = new Bundle();
        bundle.putBoolean("vr", true);
        return Integer.valueOf(zzc.zzb(7, packageName, str, bundle));
    }
}
