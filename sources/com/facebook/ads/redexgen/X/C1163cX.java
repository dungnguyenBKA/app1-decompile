package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collection;

/* renamed from: com.facebook.ads.redexgen.X.cX  reason: case insensitive filesystem */
public class C1163cX implements LO {
    public final Collection<String> A00;

    public C1163cX() {
        this.A00 = new ArrayList();
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void ACZ(String str) {
        this.A00.add(str);
    }

    @Override // com.facebook.ads.redexgen.X.LO
    public final void flush() {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String line : this.A00) {
            sb.append(line);
            sb.append('\n');
        }
        return sb.toString();
    }
}
