package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* access modifiers changed from: package-private */
public final class zzrw {
    private ByteArrayOutputStream zzbuh = new ByteArrayOutputStream(4096);
    private Base64OutputStream zzbui = new Base64OutputStream(this.zzbuh, 10);

    public final String toString() {
        try {
            this.zzbui.close();
        } catch (IOException e) {
            zzazk.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.zzbuh.close();
            return this.zzbuh.toString();
        } catch (IOException e2) {
            zzazk.zzc("HashManager: Unable to convert to Base64.", e2);
            return "";
        } finally {
            this.zzbuh = null;
            this.zzbui = null;
        }
    }

    public final void write(byte[] bArr) {
        this.zzbui.write(bArr);
    }
}
