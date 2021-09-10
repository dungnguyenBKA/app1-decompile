package com.google.android.gms.internal.ads;

import java.io.OutputStream;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzato implements Runnable {
    private final OutputStream zzdxd;
    private final byte[] zzdxe;

    zzato(OutputStream outputStream, byte[] bArr) {
        this.zzdxd = outputStream;
        this.zzdxe = bArr;
    }

    public final void run() {
        zzatp.zza(this.zzdxd, this.zzdxe);
    }
}
