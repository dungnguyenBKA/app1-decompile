package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzagk;
import com.google.android.gms.internal.ads.zzagl;
import com.google.android.gms.internal.ads.zzvy;
import com.google.android.gms.internal.ads.zzxt;
import com.google.android.gms.internal.ads.zzxw;

@Deprecated
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zze();
    private final boolean b;
    private final zzxt c;
    private AppEventListener d;
    private final IBinder e;

    @Deprecated
    public static final class Builder {
        private boolean a = false;
        private AppEventListener b;
        private ShouldDelayBannerRenderingListener c;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this, null);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.b = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.c = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    PublisherAdViewOptions(Builder builder, c cVar) {
        this.b = builder.a;
        AppEventListener appEventListener = builder.b;
        this.d = appEventListener;
        zzaas zzaas = null;
        this.c = appEventListener != null ? new zzvy(this.d) : null;
        this.e = builder.c != null ? new zzaas(builder.c) : zzaas;
    }

    public final AppEventListener getAppEventListener() {
        return this.d;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.c(parcel, 1, getManualImpressionsEnabled());
        zzxt zzxt = this.c;
        b.j(parcel, 2, zzxt == null ? null : zzxt.asBinder(), false);
        b.j(parcel, 3, this.e, false);
        b.b(parcel, a);
    }

    public final zzagl zzjr() {
        return zzagk.zzy(this.e);
    }

    public final zzxt zzjv() {
        return this.c;
    }

    PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.b = z;
        this.c = iBinder != null ? zzxw.zze(iBinder) : null;
        this.e = iBinder2;
    }
}
