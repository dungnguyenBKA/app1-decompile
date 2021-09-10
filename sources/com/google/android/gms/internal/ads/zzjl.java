package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.vungle.warren.error.VungleException;

public final class zzjl {
    public byte[] iv;
    private byte[] key;
    private int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    private int numSubSamples;
    private int zzanw;
    private int zzanx;
    private final MediaCodec.CryptoInfo zzany;
    private final zzjn zzanz;

    public zzjl() {
        int i = zzpt.SDK_INT;
        zzjn zzjn = null;
        MediaCodec.CryptoInfo cryptoInfo = i >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.zzany = cryptoInfo;
        this.zzanz = i >= 24 ? new zzjn(cryptoInfo) : zzjn;
    }

    public final void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.iv = bArr2;
        this.mode = i2;
        this.zzanw = 0;
        this.zzanx = 0;
        int i3 = zzpt.SDK_INT;
        if (i3 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.zzany;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = i2;
            if (i3 >= 24) {
                this.zzanz.set(0, 0);
            }
        }
    }

    @TargetApi(VungleException.NO_SPACE_TO_INIT)
    public final MediaCodec.CryptoInfo zzgm() {
        return this.zzany;
    }
}
