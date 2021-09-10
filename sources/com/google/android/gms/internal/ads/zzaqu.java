package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;

public final class zzaqu extends NativeAd.Image {
    private final int height;
    private final Uri uri;
    private final int width;
    private final double zzdfs;
    private final zzaer zzdfx;
    private final Drawable zzdfy;

    public zzaqu(zzaer zzaer) {
        Drawable drawable;
        int i;
        this.zzdfx = zzaer;
        Uri uri2 = null;
        try {
            zv zzti = zzaer.zzti();
            if (zzti != null) {
                drawable = (Drawable) aw.P(zzti);
                this.zzdfy = drawable;
                uri2 = this.zzdfx.getUri();
                this.uri = uri2;
                double d = 1.0d;
                d = this.zzdfx.getScale();
                this.zzdfs = d;
                int i2 = -1;
                i = this.zzdfx.getWidth();
                this.width = i;
                i2 = this.zzdfx.getHeight();
                this.height = i2;
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        drawable = null;
        this.zzdfy = drawable;
        try {
            uri2 = this.zzdfx.getUri();
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
        }
        this.uri = uri2;
        double d2 = 1.0d;
        try {
            d2 = this.zzdfx.getScale();
        } catch (RemoteException e3) {
            zzazk.zzc("", e3);
        }
        this.zzdfs = d2;
        int i22 = -1;
        try {
            i = this.zzdfx.getWidth();
        } catch (RemoteException e4) {
            zzazk.zzc("", e4);
            i = -1;
        }
        this.width = i;
        try {
            i22 = this.zzdfx.getHeight();
        } catch (RemoteException e5) {
            zzazk.zzc("", e5);
        }
        this.height = i22;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Drawable getDrawable() {
        return this.zzdfy;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.zzdfs;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Uri getUri() {
        return this.uri;
    }
}
