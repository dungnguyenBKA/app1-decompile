package com.google.android.gms.internal.ads;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcet implements zzdvz {
    private final String zzdlh;
    private final int zzeff;
    private final int zzefg;
    private final double zzgid;

    zzcet(String str, double d, int i, int i2) {
        this.zzdlh = str;
        this.zzgid = d;
        this.zzeff = i;
        this.zzefg = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        String str = this.zzdlh;
        return new zzaed(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.zzgid, this.zzeff, this.zzefg);
    }
}
