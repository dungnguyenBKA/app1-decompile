package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;

public final class zztc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztc> CREATOR = new zztf();
    @GuardedBy("this")
    private ParcelFileDescriptor zzbvg;
    @GuardedBy("this")
    private final boolean zzbvh;
    @GuardedBy("this")
    private final boolean zzbvi;
    @GuardedBy("this")
    private final long zzbvj;
    @GuardedBy("this")
    private final boolean zzbvk;

    public zztc() {
        this(null, false, false, 0, false);
    }

    private final synchronized ParcelFileDescriptor zzmy() {
        return this.zzbvg;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.q(parcel, 2, zzmy(), i, false);
        b.c(parcel, 3, zzmz());
        b.c(parcel, 4, zzna());
        b.n(parcel, 5, zznb());
        b.c(parcel, 6, zznc());
        b.b(parcel, a);
    }

    public final synchronized boolean zzmw() {
        return this.zzbvg != null;
    }

    public final synchronized InputStream zzmx() {
        if (this.zzbvg == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zzbvg);
        this.zzbvg = null;
        return autoCloseInputStream;
    }

    public final synchronized boolean zzmz() {
        return this.zzbvh;
    }

    public final synchronized boolean zzna() {
        return this.zzbvi;
    }

    public final synchronized long zznb() {
        return this.zzbvj;
    }

    public final synchronized boolean zznc() {
        return this.zzbvk;
    }

    public zztc(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.zzbvg = parcelFileDescriptor;
        this.zzbvh = z;
        this.zzbvi = z2;
        this.zzbvj = j;
        this.zzbvk = z3;
    }
}
