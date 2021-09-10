package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.i;
import java.io.IOException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdoh implements Runnable {
    private final InputStream zzhlr;
    private final ParcelFileDescriptor zzhls;

    zzdoh(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        this.zzhlr = inputStream;
        this.zzhls = parcelFileDescriptor;
    }

    public final void run() {
        InputStream inputStream = this.zzhlr;
        try {
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.zzhls);
            try {
                i.a(inputStream, autoCloseOutputStream);
                autoCloseOutputStream.close();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                } else {
                    return;
                }
            } catch (Throwable th) {
                zzeja.zza(th, th);
            }
            throw th;
            throw th;
        } catch (Throwable th2) {
            zzeja.zza(th, th2);
        }
    }
}
