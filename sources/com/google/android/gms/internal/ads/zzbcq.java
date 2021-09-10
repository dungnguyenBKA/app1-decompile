package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbcq implements zzoq {
    private final byte[] zzdxe;
    private final zzoq zzepe;

    zzbcq(zzoq zzoq, byte[] bArr) {
        this.zzepe = zzoq;
        this.zzdxe = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzoq
    public final zzon zzip() {
        zzoq zzoq = this.zzepe;
        byte[] bArr = this.zzdxe;
        return new zzbct(new zzoo(bArr), bArr.length, zzoq.zzip());
    }
}
