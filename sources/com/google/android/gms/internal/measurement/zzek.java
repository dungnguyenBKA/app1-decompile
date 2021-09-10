package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
import javax.annotation.Nullable;

final class zzek extends zzff {
    private final Context zza;
    private final zzfo<zzfm<zzev>> zzb;

    zzek(Context context, @Nullable zzfo<zzfm<zzev>> zzfo) {
        Objects.requireNonNull(context, "Null context");
        this.zza = context;
        this.zzb = zzfo;
    }

    public final boolean equals(Object obj) {
        zzfo<zzfm<zzev>> zzfo;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzff) {
            zzff zzff = (zzff) obj;
            return this.zza.equals(zzff.zza()) && ((zzfo = this.zzb) != null ? zzfo.equals(zzff.zzb()) : zzff.zzb() == null);
        }
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        zzfo<zzfm<zzev>> zzfo = this.zzb;
        if (zzfo == null) {
            i = 0;
        } else {
            i = zzfo.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(valueOf.length() + 46 + valueOf2.length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzff
    public final Context zza() {
        return this.zza;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzff
    @Nullable
    public final zzfo<zzfm<zzev>> zzb() {
        return this.zzb;
    }
}
