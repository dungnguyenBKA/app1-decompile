package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.n;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public final class zzcn extends zzbs {
    private volatile String zza;
    private Future<String> zzb;

    protected zzcn(zzbv zzbv) {
        super(zzbv);
    }

    /* access modifiers changed from: private */
    public final String zzf() {
        Object e;
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        try {
            Context a = zzq().a();
            n.e(lowerCase);
            n.g("ClientId should be saved from worker thread");
            FileOutputStream fileOutputStream = null;
            try {
                zzP("Storing clientId", lowerCase);
                fileOutputStream = a.openFileOutput("gaClientId", 0);
                fileOutputStream.write(lowerCase.getBytes());
                try {
                    fileOutputStream.close();
                } catch (IOException e2) {
                    zzK("Failed to close clientId writing stream", e2);
                }
                return lowerCase;
                zzK("Failed to close clientId writing stream", e);
                return "0";
            } catch (FileNotFoundException e3) {
                zzK("Error creating clientId file", e3);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        e = e4;
                    }
                }
                return "0";
            } catch (IOException e5) {
                zzK("Error writing to clientId file", e5);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e6) {
                        e = e6;
                    }
                }
                return "0";
            } catch (Throwable th) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e7) {
                        zzK("Failed to close clientId writing stream", e7);
                    }
                }
                throw th;
            }
        } catch (Exception e8) {
            zzK("Error saving clientId file", e8);
            return "0";
        }
    }

    public final String zzb() {
        String str;
        zzW();
        synchronized (this) {
            if (this.zza == null) {
                this.zzb = zzq().g(new zzcl(this));
            }
            Future<String> future = this.zzb;
            if (future != null) {
                try {
                    this.zza = future.get();
                } catch (InterruptedException e) {
                    zzS("ClientId loading or generation was interrupted", e);
                    this.zza = "0";
                } catch (ExecutionException e2) {
                    zzK("Failed to load or generate client id", e2);
                    this.zza = "0";
                }
                if (this.zza == null) {
                    this.zza = "0";
                }
                zzP("Loaded clientId", this.zza);
                this.zzb = null;
            }
            str = this.zza;
        }
        return str;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0078 A[SYNTHETIC, Splitter:B:32:0x0078] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0093 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String zzc() {
        /*
        // Method dump skipped, instructions count: 148
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzcn.zzc():java.lang.String");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
    }

    /* access modifiers changed from: package-private */
    public final String zze() {
        synchronized (this) {
            this.zza = null;
            this.zzb = zzq().g(new zzcm(this));
        }
        return zzb();
    }
}
