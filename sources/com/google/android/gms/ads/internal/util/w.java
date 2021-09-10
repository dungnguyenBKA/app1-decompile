package com.google.android.gms.ads.internal.util;

import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzdvl;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class w implements Callable {
    private final Uri b;

    w(Uri uri) {
        this.b = uri;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Uri uri = this.b;
        zzdvl zzdvl = zzj.zzeen;
        zzr.zzkr();
        return zzj.zzg(uri);
    }
}
