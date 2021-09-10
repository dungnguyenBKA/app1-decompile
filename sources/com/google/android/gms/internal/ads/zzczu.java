package com.google.android.gms.internal.ads;

import android.net.Uri;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzczu implements zzdvz {
    private final Uri zzgtx;
    private final zzczo zzgzl;

    zzczu(zzczo zzczo, Uri uri) {
        this.zzgzl = zzczo;
        this.zzgtx = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        return zzczo.zzc(this.zzgtx, (String) obj);
    }
}
