package com.google.android.gms.internal.ads;

public final class zzjb extends Exception {
    private final int errorCode;

    public zzjb(int i) {
        super(ic.C(36, "AudioTrack write failed: ", i));
        this.errorCode = i;
    }
}
