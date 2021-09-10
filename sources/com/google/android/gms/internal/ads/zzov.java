package com.google.android.gms.internal.ads;

import java.io.IOException;

public class zzov extends IOException {
    private final int type;
    private final zzos zzbiy;

    public zzov(String str, zzos zzos, int i) {
        super(str);
        this.zzbiy = zzos;
        this.type = 1;
    }

    public zzov(IOException iOException, zzos zzos, int i) {
        super(iOException);
        this.zzbiy = zzos;
        this.type = i;
    }

    public zzov(String str, IOException iOException, zzos zzos, int i) {
        super(str, iOException);
        this.zzbiy = zzos;
        this.type = 1;
    }
}
