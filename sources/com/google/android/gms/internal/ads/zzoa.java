package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

public final class zzoa extends zzob {
    private static final int[] zzbhk = new int[0];
    private final zzof zzbhl;
    private final AtomicReference<zznz> zzbhm;

    public zzoa() {
        this(null);
    }

    private static int zze(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    private static boolean zze(int i, boolean z) {
        int i2 = i & 3;
        if (i2 != 3) {
            return z && i2 == 2;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0178, code lost:
        if (r10 <= r15) goto L_0x017d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x01ce  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0194  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0196  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x01a2  */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01a6  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01a8  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x01ab  */
    @Override // com.google.android.gms.internal.ads.zzob
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.ads.zzog[] zza(com.google.android.gms.internal.ads.zzib[] r33, com.google.android.gms.internal.ads.zznu[] r34, int[][][] r35) {
        /*
        // Method dump skipped, instructions count: 978
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoa.zza(com.google.android.gms.internal.ads.zzib[], com.google.android.gms.internal.ads.zznu[], int[][][]):com.google.android.gms.internal.ads.zzog[]");
    }

    private zzoa(zzof zzof) {
        this.zzbhl = null;
        this.zzbhm = new AtomicReference<>(new zznz());
    }
}
