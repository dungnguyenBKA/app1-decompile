package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

public final class zzdbg implements zzdfi<zzdbe> {
    private final String zzdug;
    private final zzcin zzgmw;
    private final zzdzv zzhah;

    public zzdbg(String str, zzdzv zzdzv, zzcin zzcin) {
        this.zzdug = str;
        this.zzhah = zzdzv;
        this.zzgmw = zzcin;
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0018 */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001e A[Catch:{ zzdnt -> 0x002b }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.os.Bundle zzb(com.google.android.gms.internal.ads.zzdog r3) {
        /*
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            com.google.android.gms.internal.ads.zzapy r1 = r3.zzvd()     // Catch:{ zzdnt -> 0x0018 }
            if (r1 == 0) goto L_0x0018
            java.lang.String r1 = "sdk_version"
            com.google.android.gms.internal.ads.zzapy r2 = r3.zzvd()     // Catch:{ zzdnt -> 0x0018 }
            java.lang.String r2 = r2.toString()     // Catch:{ zzdnt -> 0x0018 }
            r0.putString(r1, r2)     // Catch:{ zzdnt -> 0x0018 }
        L_0x0018:
            com.google.android.gms.internal.ads.zzapy r1 = r3.zzvc()     // Catch:{ zzdnt -> 0x002b }
            if (r1 == 0) goto L_0x002b
            java.lang.String r1 = "adapter_version"
            com.google.android.gms.internal.ads.zzapy r3 = r3.zzvc()     // Catch:{ zzdnt -> 0x002b }
            java.lang.String r3 = r3.toString()     // Catch:{ zzdnt -> 0x002b }
            r0.putString(r1, r3)     // Catch:{ zzdnt -> 0x002b }
        L_0x002b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdbg.zzb(com.google.android.gms.internal.ads.zzdog):android.os.Bundle");
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdbe> zzasy() {
        if (new BigInteger(this.zzdug).equals(BigInteger.ONE)) {
            if (!zzdwt.zzar((String) zzwr.zzqr().zzd(zzabp.zzcqx))) {
                return this.zzhah.zze(new zzdbj(this));
            }
        }
        return zzdzk.zzag(new zzdbe(new Bundle()));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdbe zzata() {
        List<String> asList = Arrays.asList(((String) zzwr.zzqr().zzd(zzabp.zzcqx)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                bundle.putBundle(str, zzb(this.zzgmw.zzd(str, new JSONObject())));
            } catch (zzdnt unused) {
            }
        }
        return new zzdbe(bundle);
    }
}
