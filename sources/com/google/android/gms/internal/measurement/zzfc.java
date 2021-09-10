package com.google.android.gms.internal.measurement;

import android.util.Log;

/* access modifiers changed from: package-private */
public final class zzfc extends zzfg<Double> {
    zzfc(zzfe zzfe, String str, Double d, boolean z) {
        super(zzfe, "measurement.test.double_flag", d, true, null);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzfg
    public final /* bridge */ /* synthetic */ Double zza(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            String zzd = super.zzd();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(String.valueOf(zzd).length() + 27 + str.length());
            sb.append("Invalid double value for ");
            sb.append(zzd);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
