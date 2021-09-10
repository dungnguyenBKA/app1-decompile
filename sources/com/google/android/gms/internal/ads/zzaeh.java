package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

public final class zzaeh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaeh> CREATOR = new zzaeg();
    public final int versionCode;
    public final int zzbns;
    public final int zzbnt;
    public final boolean zzbnu;
    public final int zzbnv;
    public final boolean zzbnx;
    public final boolean zzdft;
    public final zzaau zzdfu;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public zzaeh(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaau(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjt(), nativeAdOptions.getMediaAspectRatio());
    }

    public static com.google.android.gms.ads.nativead.NativeAdOptions zzb(zzaeh zzaeh) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaeh == null) {
            return builder.build();
        }
        int i = zzaeh.versionCode;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaeh.zzbnx).setMediaAspectRatio(zzaeh.zzbnt);
                }
                builder.setReturnUrlsForImageAssets(zzaeh.zzdft).setRequestMultipleImages(zzaeh.zzbnu);
                return builder.build();
            }
            zzaau zzaau = zzaeh.zzdfu;
            if (zzaau != null) {
                builder.setVideoOptions(new VideoOptions(zzaau));
            }
        }
        builder.setAdChoicesPlacement(zzaeh.zzbnv);
        builder.setReturnUrlsForImageAssets(zzaeh.zzdft).setRequestMultipleImages(zzaeh.zzbnu);
        return builder.build();
    }

    public static com.google.android.gms.ads.formats.NativeAdOptions zzc(zzaeh zzaeh) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaeh == null) {
            return builder.build();
        }
        int i = zzaeh.versionCode;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaeh.zzbnx).setMediaAspectRatio(zzaeh.zzbnt);
                }
                builder.setReturnUrlsForImageAssets(zzaeh.zzdft).setImageOrientation(zzaeh.zzbns).setRequestMultipleImages(zzaeh.zzbnu);
                return builder.build();
            }
            zzaau zzaau = zzaeh.zzdfu;
            if (zzaau != null) {
                builder.setVideoOptions(new VideoOptions(zzaau));
            }
        }
        builder.setAdChoicesPlacement(zzaeh.zzbnv);
        builder.setReturnUrlsForImageAssets(zzaeh.zzdft).setImageOrientation(zzaeh.zzbns).setRequestMultipleImages(zzaeh.zzbnu);
        return builder.build();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.versionCode);
        b.c(parcel, 2, this.zzdft);
        b.k(parcel, 3, this.zzbns);
        b.c(parcel, 4, this.zzbnu);
        b.k(parcel, 5, this.zzbnv);
        b.q(parcel, 6, this.zzdfu, i, false);
        b.c(parcel, 7, this.zzbnx);
        b.k(parcel, 8, this.zzbnt);
        b.b(parcel, a);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public zzaeh(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaau(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjt(), nativeAdOptions.getMediaAspectRatio());
    }

    public zzaeh(int i, boolean z, int i2, boolean z2, int i3, zzaau zzaau, boolean z3, int i4) {
        this.versionCode = i;
        this.zzdft = z;
        this.zzbns = i2;
        this.zzbnu = z2;
        this.zzbnv = i3;
        this.zzdfu = zzaau;
        this.zzbnx = z3;
        this.zzbnt = i4;
    }
}
