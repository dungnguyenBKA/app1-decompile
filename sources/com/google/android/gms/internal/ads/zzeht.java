package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.interfaces.ECPublicKey;

public final class zzeht implements zzeat {
    private static final byte[] zzidb = new byte[0];
    private final zzehv zziji;
    private final String zzijj;
    private final byte[] zzijk;
    private final zzeic zzijl;
    private final zzehr zzijm;

    public zzeht(ECPublicKey eCPublicKey, byte[] bArr, String str, zzeic zzeic, zzehr zzehr) {
        zzehx.zza(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.zziji = new zzehv(eCPublicKey);
        this.zzijk = bArr;
        this.zzijj = str;
        this.zzijl = zzeic;
        this.zzijm = zzehr;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        zzehy zza = this.zziji.zza(this.zzijj, this.zzijk, bArr2, this.zzijm.zzbbd(), this.zzijl);
        byte[] zzc = this.zzijm.zzm(zza.zzbfr()).zzc(bArr, zzidb);
        byte[] zzbfq = zza.zzbfq();
        return ByteBuffer.allocate(zzbfq.length + zzc.length).put(zzbfq).put(zzc).array();
    }
}
