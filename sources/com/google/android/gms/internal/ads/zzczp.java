package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.concurrent.Callable;

final /* synthetic */ class zzczp implements Callable {
    private final Uri zzgtx;
    private final zzczo zzgzl;
    private final zv zzgzn;

    zzczp(zzczo zzczo, Uri uri, zv zvVar) {
        this.zzgzl = zzczo;
        this.zzgtx = uri;
        this.zzgzn = zvVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgzl.zzb(this.zzgtx, this.zzgzn);
    }
}
