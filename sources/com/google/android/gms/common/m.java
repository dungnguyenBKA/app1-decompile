package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.i0;
import com.google.android.gms.common.internal.k0;
import com.google.android.gms.common.internal.n;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* access modifiers changed from: package-private */
public abstract class m extends k0 {
    private int b;

    protected m(byte[] bArr) {
        n.a(bArr.length == 25);
        this.b = Arrays.hashCode(bArr);
    }

    protected static byte[] Q(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: package-private */
    public abstract byte[] P();

    public boolean equals(Object obj) {
        zv zzb;
        if (obj != null && (obj instanceof i0)) {
            try {
                i0 i0Var = (i0) obj;
                if (i0Var.zzc() == this.b && (zzb = i0Var.zzb()) != null) {
                    return Arrays.equals(P(), (byte[]) aw.P(zzb));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    public int hashCode() {
        return this.b;
    }

    @Override // com.google.android.gms.common.internal.i0
    public final zv zzb() {
        return aw.Q(P());
    }

    @Override // com.google.android.gms.common.internal.i0
    public final int zzc() {
        return this.b;
    }
}
