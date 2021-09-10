package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;

public final class zzos {
    public final int flags;
    public final long position;
    public final Uri uri;
    public final byte[] zzbil;
    public final long zzbim;
    public final String zzcm;
    public final long zzco;

    public zzos(Uri uri2) {
        this(uri2, 0);
    }

    public final boolean isFlagSet(int i) {
        return (this.flags & 1) == 1;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.uri);
        String arrays = Arrays.toString(this.zzbil);
        long j = this.zzbim;
        long j2 = this.position;
        long j3 = this.zzco;
        String str = this.zzcm;
        int i = this.flags;
        StringBuilder p = ic.p(ic.m(str, ic.m(arrays, valueOf.length() + 93)), "DataSpec[", valueOf, ", ", arrays);
        p.append(", ");
        p.append(j);
        p.append(", ");
        p.append(j2);
        p.append(", ");
        p.append(j3);
        p.append(", ");
        p.append(str);
        p.append(", ");
        p.append(i);
        p.append("]");
        return p.toString();
    }

    private zzos(Uri uri2, int i) {
        this(uri2, 0, -1, null, 0);
    }

    public zzos(Uri uri2, long j, long j2, String str) {
        this(uri2, j, j, j2, str, 0);
    }

    private zzos(Uri uri2, long j, long j2, String str, int i) {
        this(uri2, 0, 0, -1, null, 0);
    }

    private zzos(Uri uri2, long j, long j2, long j3, String str, int i) {
        this(uri2, null, j, j2, j3, str, 0);
    }

    public zzos(Uri uri2, byte[] bArr, long j, long j2, long j3, String str, int i) {
        boolean z = true;
        zzpg.checkArgument(j >= 0);
        zzpg.checkArgument(j2 >= 0);
        if (j3 <= 0 && j3 != -1) {
            z = false;
        }
        zzpg.checkArgument(z);
        this.uri = uri2;
        this.zzbil = bArr;
        this.zzbim = j;
        this.position = j2;
        this.zzco = j3;
        this.zzcm = str;
        this.flags = i;
    }
}
