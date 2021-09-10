package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;

@TargetApi(VungleException.SERVER_ERROR)
public final class zzig {
    private static final zzig zzait = new zzig(new int[]{2}, 2);
    private final int[] zzaiu;
    private final int zzaiv = 2;

    private zzig(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.zzaiu = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzig)) {
            return false;
        }
        zzig zzig = (zzig) obj;
        return Arrays.equals(this.zzaiu, zzig.zzaiu) && this.zzaiv == zzig.zzaiv;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzaiu) * 31) + this.zzaiv;
    }

    public final String toString() {
        int i = this.zzaiv;
        String arrays = Arrays.toString(this.zzaiu);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
