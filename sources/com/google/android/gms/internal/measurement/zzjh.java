package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzjh implements zziu {
    private final zzix zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    /* JADX WARNING: Can't wrap try/catch for region: R(3:8|9|(3:10|11|12)) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        r7 = r2.charAt(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0035, code lost:
        r6 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0057, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0058, code lost:
        r1 = r0;
        r0 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005b, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x005c, code lost:
        r3 = new java.lang.Object[2];
        r3[r7] = r0;
        r3[1] = java.lang.Integer.valueOf(r6.length);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0074, code lost:
        throw new java.lang.IllegalStateException(java.lang.String.format("Failed parsing '%s' with charArray.length of %d", r3), r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
        r1 = new char[r0.length()];
        r0.getChars(r7, r0.length(), r1, r7);
        r2 = new java.lang.String(r1);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x001f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    zzjh(com.google.android.gms.internal.measurement.zzix r5, java.lang.String r6, java.lang.Object[] r7) {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjh.<init>(com.google.android.gms.internal.measurement.zzix, java.lang.String, java.lang.Object[]):void");
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final boolean zza() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final zzix zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzc() {
        return (this.zzd & 1) == 1 ? 1 : 2;
    }

    /* access modifiers changed from: package-private */
    public final String zzd() {
        return this.zzb;
    }

    /* access modifiers changed from: package-private */
    public final Object[] zze() {
        return this.zzc;
    }
}
