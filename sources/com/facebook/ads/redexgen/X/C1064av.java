package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.text.ttml.TtmlRegion;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.av  reason: case insensitive filesystem */
public final class C1064av implements GC {
    public final GZ A00;
    public final Map<String, C0508Gf> A01;
    public final Map<String, C0503Ga> A02;
    public final long[] A03;

    public C1064av(GZ gz, Map<String, C0508Gf> map, Map<String, C0503Ga> map2) {
        Map<String, TtmlRegion> regionMap;
        this.A00 = gz;
        this.A02 = map2;
        if (map != null) {
            regionMap = Collections.unmodifiableMap(map);
        } else {
            regionMap = Collections.emptyMap();
        }
        this.A01 = regionMap;
        this.A03 = gz.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final List<GB> A63(long j) {
        return this.A00.A0E(j, this.A01, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final long A6S(int i) {
        return this.A03[i];
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6T() {
        return this.A03.length;
    }

    @Override // com.facebook.ads.redexgen.X.GC
    public final int A6n(long j) {
        int A0A = C0556Ic.A0A(this.A03, j, false, false);
        if (A0A < this.A03.length) {
            return A0A;
        }
        return -1;
    }
}
