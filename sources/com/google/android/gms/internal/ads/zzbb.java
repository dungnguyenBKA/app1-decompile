package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class zzbb {
    private final int zzcq;
    private final List<zzv> zzcr;
    private final int zzcs;
    private final InputStream zzct;
    private final byte[] zzcu;

    public zzbb(int i, List<zzv> list) {
        this(i, list, -1, null);
    }

    public final InputStream getContent() {
        InputStream inputStream = this.zzct;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public final int getContentLength() {
        return this.zzcs;
    }

    public final int getStatusCode() {
        return this.zzcq;
    }

    public final List<zzv> zzq() {
        return Collections.unmodifiableList(this.zzcr);
    }

    public zzbb(int i, List<zzv> list, int i2, InputStream inputStream) {
        this.zzcq = i;
        this.zzcr = list;
        this.zzcs = i2;
        this.zzct = inputStream;
        this.zzcu = null;
    }
}
