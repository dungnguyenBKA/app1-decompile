package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class zzawu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzawu> CREATOR = new zzawx();
    public final String zzeam;
    public final String zzean;
    public final boolean zzeao;
    public final boolean zzeap;
    public final List<String> zzeaq;
    public final boolean zzear;
    public final boolean zzeas;
    private final List<String> zzeat;

    public zzawu(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4, List<String> list2) {
        this.zzeam = str;
        this.zzean = str2;
        this.zzeao = z;
        this.zzeap = z2;
        this.zzeaq = list;
        this.zzear = z3;
        this.zzeas = z4;
        this.zzeat = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzawu zzg(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new zzawu(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzbh.zza(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzbh.zza(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int a = b.a(parcel);
        b.r(parcel, 2, this.zzeam, false);
        b.r(parcel, 3, this.zzean, false);
        b.c(parcel, 4, this.zzeao);
        b.c(parcel, 5, this.zzeap);
        b.t(parcel, 6, this.zzeaq, false);
        b.c(parcel, 7, this.zzear);
        b.c(parcel, 8, this.zzeas);
        b.t(parcel, 9, this.zzeat, false);
        b.b(parcel, a);
    }
}
