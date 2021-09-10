package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;

public final class zzaed extends zzaeq {
    private final int height;
    private final Uri uri;
    private final int width;
    private final Drawable zzdfr;
    private final double zzdfs;

    public zzaed(Drawable drawable, Uri uri2, double d, int i, int i2) {
        this.zzdfr = drawable;
        this.uri = uri2;
        this.zzdfs = d;
        this.width = i;
        this.height = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final int getHeight() {
        return this.height;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final double getScale() {
        return this.zzdfs;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final int getWidth() {
        return this.width;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final zv zzti() {
        return aw.Q(this.zzdfr);
    }
}
