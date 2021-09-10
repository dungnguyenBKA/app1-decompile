package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzvu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvu> CREATOR = new zzvt();
    public final int type;
    public final int zzadc;
    public final String zzadd;
    public final long zzade;

    public zzvu(int i, int i2, String str, long j) {
        this.type = i;
        this.zzadc = i2;
        this.zzadd = str;
        this.zzade = j;
    }

    public static zzvu zza(JSONObject jSONObject) {
        return new zzvu(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong("value"));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.type);
        b.k(parcel, 2, this.zzadc);
        b.r(parcel, 3, this.zzadd, false);
        b.n(parcel, 4, this.zzade);
        b.b(parcel, a);
    }
}
