package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract int i0();

    public abstract long j0();

    public abstract String k0();

    public abstract long o();

    public String toString() {
        long o = o();
        int i0 = i0();
        long j0 = j0();
        String k0 = k0();
        StringBuilder sb = new StringBuilder(String.valueOf(k0).length() + 53);
        sb.append(o);
        sb.append("\t");
        sb.append(i0);
        sb.append("\t");
        sb.append(j0);
        sb.append(k0);
        return sb.toString();
    }
}
