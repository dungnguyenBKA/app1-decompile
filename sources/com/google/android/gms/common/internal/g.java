package com.google.android.gms.common.internal;

import android.util.SparseIntArray;
import com.google.android.gms.common.d;
import java.util.Objects;

public class g {
    private final SparseIntArray a = new SparseIntArray();
    private d b;

    public g(d dVar) {
        Objects.requireNonNull(dVar, "null reference");
        this.b = dVar;
    }
}
