package com.google.android.gms.internal.measurement;

import android.util.Log;

/* access modifiers changed from: package-private */
public final class zzfa extends zzfg<Long> {
    zzfa(zzfe zzfe, String str, Long l, boolean z) {
        super(zzfe, str, l, true, null);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzfg
    public final /* bridge */ /* synthetic */ Long zza(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            String zzd = super.zzd();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(String.valueOf(zzd).length() + 25 + str.length());
            sb.append("Invalid long value for ");
            sb.append(zzd);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
