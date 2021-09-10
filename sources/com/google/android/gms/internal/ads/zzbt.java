package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;

public final class zzbt extends zzepm {
    private Date zzdd;
    private Date zzde;
    private long zzdf;
    private long zzdg;
    private double zzdh = 1.0d;
    private float zzdi = 1.0f;
    private zzepw zzdj = zzepw.zzjbr;
    private long zzdk;
    private int zzdl;
    private int zzdm;
    private int zzdn;
    private int zzdo;
    private int zzdp;
    private int zzdq;

    public zzbt() {
        super("mvhd");
    }

    public final long getDuration() {
        return this.zzdg;
    }

    public final String toString() {
        StringBuilder r = ic.r("MovieHeaderBox[", "creationTime=");
        r.append(this.zzdd);
        r.append(";");
        r.append("modificationTime=");
        r.append(this.zzde);
        r.append(";");
        r.append("timescale=");
        r.append(this.zzdf);
        r.append(";");
        r.append("duration=");
        r.append(this.zzdg);
        r.append(";");
        r.append("rate=");
        r.append(this.zzdh);
        r.append(";");
        r.append("volume=");
        r.append(this.zzdi);
        r.append(";");
        r.append("matrix=");
        r.append(this.zzdj);
        r.append(";");
        r.append("nextTrackId=");
        r.append(this.zzdk);
        r.append("]");
        return r.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzepk
    public final void zzl(ByteBuffer byteBuffer) {
        zzr(byteBuffer);
        if (getVersion() == 1) {
            this.zzdd = zzepp.zzfu(zzbp.zzh(byteBuffer));
            this.zzde = zzepp.zzfu(zzbp.zzh(byteBuffer));
            this.zzdf = zzbp.zzf(byteBuffer);
            this.zzdg = zzbp.zzh(byteBuffer);
        } else {
            this.zzdd = zzepp.zzfu(zzbp.zzf(byteBuffer));
            this.zzde = zzepp.zzfu(zzbp.zzf(byteBuffer));
            this.zzdf = zzbp.zzf(byteBuffer);
            this.zzdg = zzbp.zzf(byteBuffer);
        }
        this.zzdh = zzbp.zzi(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.zzdi = ((float) ((short) ((bArr[1] & 255) | ((short) (0 | ((bArr[0] << 8) & 65280)))))) / 256.0f;
        zzbp.zzg(byteBuffer);
        zzbp.zzf(byteBuffer);
        zzbp.zzf(byteBuffer);
        this.zzdj = zzepw.zzs(byteBuffer);
        this.zzdl = byteBuffer.getInt();
        this.zzdm = byteBuffer.getInt();
        this.zzdn = byteBuffer.getInt();
        this.zzdo = byteBuffer.getInt();
        this.zzdp = byteBuffer.getInt();
        this.zzdq = byteBuffer.getInt();
        this.zzdk = zzbp.zzf(byteBuffer);
    }

    public final long zzr() {
        return this.zzdf;
    }
}
