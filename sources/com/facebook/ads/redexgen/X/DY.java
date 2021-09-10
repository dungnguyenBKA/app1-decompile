package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

public final class DY {
    public final int A00;
    public final String A01;
    public final List<DX> A02;
    public final byte[] A03;

    public DY(int i, String str, List<DX> list, byte[] bArr) {
        List<DX> unmodifiableList;
        this.A00 = i;
        this.A01 = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.A02 = unmodifiableList;
        this.A03 = bArr;
    }
}
