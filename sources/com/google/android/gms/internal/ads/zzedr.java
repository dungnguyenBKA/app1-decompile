package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

public final class zzedr {
    @Deprecated
    private static final zzegy zzicr;
    @Deprecated
    private static final zzegy zzics;
    @Deprecated
    private static final zzegy zzict;
    private static final String zzidx = new zzedn().getKeyType();

    static {
        zzegy zzbfk = zzegy.zzbfk();
        zzicr = zzbfk;
        zzics = zzbfk;
        zzict = zzbfk;
        try {
            zzbba();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zzbba() {
        zzebm.zza((zzeax) new zzedn(), true);
        zzebm.zza((zzeax) new zzedm(), true);
        zzebm.zza(new zzedu());
    }
}
