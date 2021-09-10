package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.io.IOException;

final /* synthetic */ class zzto implements Runnable {
    private final zztp zzbvw;
    private final zzte zzbvx;
    private final zzth zzbvy;
    private final zzbaa zzbvz;

    zzto(zztp zztp, zzte zzte, zzth zzth, zzbaa zzbaa) {
        this.zzbvw = zztp;
        this.zzbvx = zzte;
        this.zzbvy = zzth;
        this.zzbvz = zzbaa;
    }

    public final void run() {
        zztc zztc;
        zztp zztp = this.zzbvw;
        zzte zzte = this.zzbvx;
        zzth zzth = this.zzbvy;
        zzbaa zzbaa = this.zzbvz;
        try {
            zzti zznd = zzte.zznd();
            if (zzte.zzne()) {
                zztc = zznd.zzc(zzth);
            } else {
                zztc = zznd.zza(zzth);
            }
            if (!zztc.zzmw()) {
                zzbaa.setException(new RuntimeException("No entry contents."));
                zztp.zzbvu.disconnect();
                return;
            }
            zztq zztq = new zztq(zztp, zztc.zzmx(), 1);
            int read = zztq.read();
            if (read != -1) {
                zztq.unread(read);
                zzbaa.set(zztv.zza(zztq, zztc.zzmz(), zztc.zznc(), zztc.zznb(), zztc.zzna()));
                return;
            }
            throw new IOException("Unable to read from cache.");
        } catch (RemoteException | IOException e) {
            zzazk.zzc("Unable to obtain a cache service instance.", e);
            zzbaa.setException(e);
            zztp.zzbvu.disconnect();
        }
    }
}
