package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class zzbl implements zzbn {
    private static Logger zzcz = Logger.getLogger(zzbl.class.getName());
    private ThreadLocal<ByteBuffer> zzda = new zzbo(this);

    @Override // com.google.android.gms.internal.ads.zzbn
    public final zzbs zza(zzepn zzepn, zzbr zzbr) {
        int read;
        long j;
        long position = zzepn.position();
        this.zzda.get().rewind().limit(8);
        do {
            read = zzepn.read(this.zzda.get());
            if (read == 8) {
                this.zzda.get().rewind();
                long zzf = zzbp.zzf(this.zzda.get());
                byte[] bArr = null;
                if (zzf >= 8 || zzf <= 1) {
                    String zzk = zzbp.zzk(this.zzda.get());
                    if (zzf == 1) {
                        this.zzda.get().limit(16);
                        zzepn.read(this.zzda.get());
                        this.zzda.get().position(8);
                        j = zzbp.zzh(this.zzda.get()) - 16;
                    } else {
                        j = zzf == 0 ? zzepn.size() - zzepn.position() : zzf - 8;
                    }
                    if ("uuid".equals(zzk)) {
                        this.zzda.get().limit(this.zzda.get().limit() + 16);
                        zzepn.read(this.zzda.get());
                        bArr = new byte[16];
                        for (int position2 = this.zzda.get().position() - 16; position2 < this.zzda.get().position(); position2++) {
                            bArr[position2 - (this.zzda.get().position() - 16)] = this.zzda.get().get(position2);
                        }
                        j -= 16;
                    }
                    zzbs zza = zza(zzk, bArr, zzbr instanceof zzbs ? ((zzbs) zzbr).getType() : "");
                    zza.zza(zzbr);
                    this.zzda.get().rewind();
                    zza.zza(zzepn, this.zzda.get(), j, this);
                    return zza;
                }
                Logger logger = zzcz;
                Level level = Level.SEVERE;
                StringBuilder sb = new StringBuilder(80);
                sb.append("Plausibility check failed: size < 8 (size = ");
                sb.append(zzf);
                sb.append("). Stop parsing!");
                logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                return null;
            }
        } while (read >= 0);
        zzepn.zzfc(position);
        throw new EOFException();
    }

    public abstract zzbs zza(String str, byte[] bArr, String str2);
}
