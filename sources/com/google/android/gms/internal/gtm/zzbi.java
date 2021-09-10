package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public final class zzbi extends zzbs {
    public static boolean zza;
    private AdvertisingIdClient.Info zzb;
    private final zzfo zzc;
    private String zzd;
    private boolean zze = false;
    private final Object zzf = new Object();

    zzbi(zzbv zzbv) {
        super(zzbv);
        this.zzc = new zzfo(zzbv.zzr());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0159, code lost:
        if (r0 == false) goto L_0x015e;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final synchronized com.google.android.gms.ads.identifier.AdvertisingIdClient.Info zzc() {
        /*
        // Method dump skipped, instructions count: 375
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzbi.zzc():com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }

    private static String zze(String str) {
        MessageDigest zze2 = zzfs.zze("MD5");
        if (zze2 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zze2.digest(str.getBytes())));
    }

    private final boolean zzf(String str) {
        try {
            String zze2 = zze(str);
            zzO("Storing hashed adid.");
            FileOutputStream openFileOutput = zzo().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(zze2.getBytes());
            openFileOutput.close();
            this.zzd = zze2;
            return true;
        } catch (IOException e) {
            zzK("Error creating hash file", e);
            return false;
        }
    }

    public final String zza() {
        zzW();
        AdvertisingIdClient.Info zzc2 = zzc();
        String id = zzc2 != null ? zzc2.getId() : null;
        if (TextUtils.isEmpty(id)) {
            return null;
        }
        return id;
    }

    public final boolean zzb() {
        zzW();
        AdvertisingIdClient.Info zzc2 = zzc();
        if (zzc2 == null || zzc2.isLimitAdTrackingEnabled()) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
    }
}
