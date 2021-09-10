package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;

public final class zzajo implements InitializationStatus {
    private final Map<String, AdapterStatus> zzdiw;

    public zzajo(Map<String, AdapterStatus> map) {
        this.zzdiw = map;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map<String, AdapterStatus> getAdapterStatusMap() {
        return this.zzdiw;
    }
}
