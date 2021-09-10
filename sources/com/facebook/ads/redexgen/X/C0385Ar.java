package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import androidx.annotation.Nullable;
import com.vungle.warren.error.VungleException;

/* renamed from: com.facebook.ads.redexgen.X.Ar  reason: case insensitive filesystem */
public final class C0385Ar {
    public static final C0385Ar A04 = new C0384Aq().A00();
    public AudioAttributes A00;
    public final int A01;
    public final int A02;
    public final int A03;

    public C0385Ar(int i, int i2, int i3) {
        this.A01 = i;
        this.A02 = i2;
        this.A03 = i3;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public final AudioAttributes A00() {
        if (this.A00 == null) {
            this.A00 = new AudioAttributes.Builder().setContentType(this.A01).setFlags(this.A02).setUsage(this.A03).build();
        }
        return this.A00;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0385Ar ar = (C0385Ar) obj;
        if (this.A01 == ar.A01 && this.A02 == ar.A02 && this.A03 == ar.A03) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((17 * 31) + this.A01) * 31) + this.A02) * 31) + this.A03;
    }
}
