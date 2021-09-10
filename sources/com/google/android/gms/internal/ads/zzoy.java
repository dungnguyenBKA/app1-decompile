package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

public final class zzoy extends zzov {
    private final int responseCode;
    private final Map<String, List<String>> zzbjh;

    public zzoy(int i, Map<String, List<String>> map, zzos zzos) {
        super(ic.C(26, "Response code: ", i), zzos, 1);
        this.responseCode = i;
        this.zzbjh = map;
    }
}
