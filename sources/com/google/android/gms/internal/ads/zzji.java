package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;

public class zzji {
    private int flags;

    public void clear() {
        this.flags = 0;
    }

    public final void setFlags(int i) {
        this.flags = i;
    }

    public final void zzaa(int i) {
        this.flags |= RecyclerView.UNDEFINED_DURATION;
    }

    /* access modifiers changed from: protected */
    public final boolean zzab(int i) {
        return (this.flags & i) == i;
    }

    public final boolean zzgh() {
        return zzab(RecyclerView.UNDEFINED_DURATION);
    }

    public final boolean zzgi() {
        return zzab(4);
    }

    public final boolean zzgj() {
        return zzab(1);
    }
}
