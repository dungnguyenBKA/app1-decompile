package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Arrays;
import org.json.JSONArray;

public final class zzavj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavj> CREATOR = new zzavi();
    public final String type;
    public final int zzdzc;

    public zzavj(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public static zzavj zza(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzavj(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzavj)) {
            zzavj zzavj = (zzavj) obj;
            if (!m.a(this.type, zzavj.type) || !m.a(Integer.valueOf(this.zzdzc), Integer.valueOf(zzavj.zzdzc))) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.type, Integer.valueOf(this.zzdzc)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.type, false);
        b.k(parcel, 3, this.zzdzc);
        b.b(parcel, a);
    }

    public zzavj(String str, int i) {
        this.type = str;
        this.zzdzc = i;
    }
}
