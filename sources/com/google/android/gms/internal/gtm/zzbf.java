package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.k;
import java.util.HashMap;
import java.util.UUID;

public final class zzbf extends k<zzbf> {
    private int zza;

    public zzbf() {
        UUID randomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (randomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits == 0 && (leastSignificantBits = (int) (randomUUID.getMostSignificantBits() & 2147483647L)) == 0) {
            Log.e("GAv4", "UUID.randomUUID() returned 0.");
            leastSignificantBits = Integer.MAX_VALUE;
        }
        if (leastSignificantBits != 0) {
            this.zza = leastSignificantBits;
            return;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", null);
        Boolean bool = Boolean.FALSE;
        hashMap.put("interstitial", bool);
        hashMap.put("automatic", bool);
        hashMap.put("screenId", Integer.valueOf(this.zza));
        hashMap.put("referrerScreenId", 0);
        hashMap.put("referrerScreenName", null);
        hashMap.put("referrerUri", null);
        return k.zza(hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.k] */
    @Override // com.google.android.gms.analytics.k
    public final /* bridge */ /* synthetic */ void zzc(zzbf zzbf) {
        zzbf zzbf2 = zzbf;
        TextUtils.isEmpty(null);
        int i = this.zza;
        if (i != 0) {
            zzbf2.zza = i;
        }
        TextUtils.isEmpty(null);
        if (!TextUtils.isEmpty(null)) {
            TextUtils.isEmpty(null);
        }
    }

    public final int zzd() {
        return this.zza;
    }
}
