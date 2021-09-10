package com.facebook.ads.redexgen.X;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Ej  reason: case insensitive filesystem */
public final class C0464Ej {
    public final HF A00;
    public final HH A01;
    public final HH A02;
    public final AbstractC0535Hh A03;
    public final IQ A04;

    public C0464Ej(AbstractC0535Hh hh, HH hh2) {
        this(hh, hh2, null, null, null);
    }

    public C0464Ej(AbstractC0535Hh hh, HH hh2, @Nullable HH hh3, @Nullable HF hf, @Nullable IQ iq) {
        C0551Hx.A01(hh2);
        this.A03 = hh;
        this.A02 = hh2;
        this.A01 = hh3;
        this.A00 = hf;
        this.A04 = iq;
    }

    public final AbstractC0535Hh A00() {
        return this.A03;
    }

    public final C1103bY A01(boolean z) {
        HI cacheReadDataSource;
        HG bWVar;
        HH hh = this.A01;
        if (hh != null) {
            cacheReadDataSource = hh.A4E();
        } else {
            cacheReadDataSource = new C1085bG();
        }
        if (z) {
            return new C1103bY(this.A03, C1084bF.A02, cacheReadDataSource, null, 1, null);
        }
        HF hf = this.A00;
        if (hf != null) {
            bWVar = hf.createDataSink();
        } else {
            bWVar = new C1101bW(this.A03, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        }
        HI A4E = this.A02.A4E();
        IQ iq = this.A04;
        if (iq != null) {
            A4E = new C1095bQ(A4E, iq, -1000);
        }
        return new C1103bY(this.A03, A4E, cacheReadDataSource, bWVar, 1, null);
    }

    public final IQ A02() {
        IQ iq = this.A04;
        return iq != null ? iq : new IQ();
    }
}
