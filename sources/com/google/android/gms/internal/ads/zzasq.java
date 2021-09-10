package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import defpackage.zv;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzasq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzasq> CREATOR = new zzast();
    public final View zzaat;
    public final Map<String, WeakReference<View>> zzdto;

    public zzasq(IBinder iBinder, IBinder iBinder2) {
        this.zzaat = (View) aw.P(zv.a.O(iBinder));
        this.zzdto = (Map) aw.P(zv.a.O(iBinder2));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.j(parcel, 1, aw.Q(this.zzaat).asBinder(), false);
        b.j(parcel, 2, aw.Q(this.zzdto).asBinder(), false);
        b.b(parcel, a);
    }
}
