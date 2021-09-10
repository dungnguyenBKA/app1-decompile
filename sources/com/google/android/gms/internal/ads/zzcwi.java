package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzbsu;
import java.util.Iterator;

public final class zzcwi<AdT, AdapterT, ListenerT extends zzbsu> implements zzcrj<AdT> {
    private final zzcro<AdapterT, ListenerT> zzfqk;
    private final zzdrj zzfwz;
    private final zzcrr<AdT, AdapterT, ListenerT> zzgwh;
    private final zzdzv zzgwi;

    public zzcwi(zzdrj zzdrj, zzdzv zzdzv, zzcro<AdapterT, ListenerT> zzcro, zzcrr<AdT, AdapterT, ListenerT> zzcrr) {
        this.zzfwz = zzdrj;
        this.zzgwi = zzdzv;
        this.zzgwh = zzcrr;
        this.zzfqk = zzcro;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        return !zzdmw.zzhjh.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdT> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        zzcrl<AdapterT, ListenerT> zzcrl;
        Iterator<String> it = zzdmw.zzhjh.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzcrl = null;
                break;
            }
            try {
                zzcrl = this.zzfqk.zzf(it.next(), zzdmw.zzhjj);
                break;
            } catch (zzdnt unused) {
            }
        }
        if (zzcrl == null) {
            return zzdzk.immediateFailedFuture(new zzcum("unable to instantiate mediation adapter class"));
        }
        zzbaa zzbaa = new zzbaa();
        zzcrl.zzgsu.zza(new zzcwj(this, zzcrl, zzbaa));
        if (zzdmw.zzdxt) {
            Bundle bundle = zzdnl.zzhkr.zzfwy.zzhkw.zzchu;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        return this.zzfwz.zzt(zzdrk.ADAPTER_LOAD_AD_SYN).zza(new zzcwh(this, zzdnl, zzdmw, zzcrl), this.zzgwi).zzv(zzdrk.ADAPTER_LOAD_AD_ACK).zze(zzbaa).zzv(zzdrk.ADAPTER_WRAP_ADAPTER).zzb(new zzcwk(this, zzdnl, zzdmw, zzcrl)).zzaxj();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(zzdnl zzdnl, zzdmw zzdmw, zzcrl zzcrl) {
        this.zzgwh.zza(zzdnl, zzdmw, zzcrl);
    }

    static String zza(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zza(zzdnl zzdnl, zzdmw zzdmw, zzcrl zzcrl, Void r4) {
        return this.zzgwh.zzb(zzdnl, zzdmw, zzcrl);
    }
}
