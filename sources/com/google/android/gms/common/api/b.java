package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;

public final class b extends UnsupportedOperationException {
    private final Feature b;

    public b(Feature feature) {
        this.b = feature;
    }

    public final String getMessage() {
        String valueOf = String.valueOf(this.b);
        return ic.d(valueOf.length() + 8, "Missing ", valueOf);
    }
}
