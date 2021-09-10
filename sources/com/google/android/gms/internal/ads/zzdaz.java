package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;

public final class zzdaz implements zzdfj<Bundle> {
    private final String zzacy;
    private final zzvs zzbpo;
    private final float zzbsd;
    private final boolean zzcii;
    private final int zzdqi;
    private final int zzdqj;
    private final String zzhap;
    private final String zzhaq;
    private final boolean zzhar;

    public zzdaz(zzvs zzvs, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        n.i(zzvs, "the adSize must not be null");
        this.zzbpo = zzvs;
        this.zzacy = str;
        this.zzcii = z;
        this.zzhap = str2;
        this.zzbsd = f;
        this.zzdqi = i;
        this.zzdqj = i2;
        this.zzhaq = str3;
        this.zzhar = z2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdnz.zza(bundle2, "smart_w", "full", this.zzbpo.width == -1);
        zzdnz.zza(bundle2, "smart_h", "auto", this.zzbpo.height == -2);
        Boolean bool = Boolean.TRUE;
        zzdnz.zza(bundle2, "ene", bool, this.zzbpo.zzcij);
        zzdnz.zza(bundle2, "rafmt", "102", this.zzbpo.zzcim);
        zzdnz.zza(bundle2, "rafmt", "103", this.zzbpo.zzcin);
        zzdnz.zza(bundle2, "inline_adaptive_slot", bool, this.zzhar);
        zzdnz.zza(bundle2, "format", this.zzacy);
        zzdnz.zza(bundle2, "fluid", "height", this.zzcii);
        String str = this.zzhap;
        zzdnz.zza(bundle2, "sz", str, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.zzbsd);
        bundle2.putInt("sw", this.zzdqi);
        bundle2.putInt("sh", this.zzdqj);
        String str2 = this.zzhaq;
        zzdnz.zza(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzvs[] zzvsArr = this.zzbpo.zzcih;
        if (zzvsArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.zzbpo.height);
            bundle3.putInt("width", this.zzbpo.width);
            bundle3.putBoolean("is_fluid_height", this.zzbpo.zzcii);
            arrayList.add(bundle3);
        } else {
            for (zzvs zzvs : zzvsArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzvs.zzcii);
                bundle4.putInt("height", zzvs.height);
                bundle4.putInt("width", zzvs.width);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
