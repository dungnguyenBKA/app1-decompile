package com.google.android.gms.internal.measurement;

import android.net.Uri;

public final class zzex {
    private static final x<String, Uri> zza = new x<>();

    public static synchronized Uri zza(String str) {
        Uri orDefault;
        String str2;
        synchronized (zzex.class) {
            x<String, Uri> xVar = zza;
            orDefault = xVar.getOrDefault("com.google.android.gms.measurement", null);
            if (orDefault == null) {
                String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                if (valueOf.length() != 0) {
                    str2 = "content://com.google.android.gms.phenotype/".concat(valueOf);
                } else {
                    str2 = new String("content://com.google.android.gms.phenotype/");
                }
                orDefault = Uri.parse(str2);
                xVar.put("com.google.android.gms.measurement", orDefault);
            }
        }
        return orDefault;
    }
}
