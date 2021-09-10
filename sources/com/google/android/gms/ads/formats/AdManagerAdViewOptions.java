package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzagk;
import com.google.android.gms.internal.ads.zzagl;

public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzb();
    private final boolean b;
    private final IBinder c;

    public static final class Builder {
        private boolean a = false;
        private ShouldDelayBannerRenderingListener b;

        public final AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this, (a) null);
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.b = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    AdManagerAdViewOptions(Builder builder, a aVar) {
        this.b = builder.a;
        this.c = builder.b != null ? new zzaas(builder.b) : null;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.b;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.c(parcel, 1, getManualImpressionsEnabled());
        b.j(parcel, 2, this.c, false);
        b.b(parcel, a);
    }

    public final zzagl zzjr() {
        return zzagk.zzy(this.c);
    }

    AdManagerAdViewOptions(boolean z, IBinder iBinder) {
        this.b = z;
        this.c = iBinder;
    }
}
