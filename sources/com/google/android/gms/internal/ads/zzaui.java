package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.m;

public final class zzaui extends zzaun {
    private final String type;
    private final int zzdzc;

    public zzaui(String str, int i) {
        this.type = str;
        this.zzdzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzaui)) {
            zzaui zzaui = (zzaui) obj;
            if (!m.a(this.type, zzaui.type) || !m.a(Integer.valueOf(this.zzdzc), Integer.valueOf(zzaui.zzdzc))) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzauk
    public final int getAmount() {
        return this.zzdzc;
    }

    @Override // com.google.android.gms.internal.ads.zzauk
    public final String getType() {
        return this.type;
    }
}
