package com.google.android.gms.internal.measurement;

import android.util.Log;

/* access modifiers changed from: package-private */
public final class zzfb extends zzfg<Boolean> {
    zzfb(zzfe zzfe, String str, Boolean bool, boolean z) {
        super(zzfe, str, bool, true, null);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzfg
    public final /* bridge */ /* synthetic */ Boolean zza(Object obj) {
        if (zzei.zzc.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzei.zzd.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String zzd = super.zzd();
        String str = (String) obj;
        StringBuilder sb = new StringBuilder(String.valueOf(zzd).length() + 28 + str.length());
        sb.append("Invalid boolean value for ");
        sb.append(zzd);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
