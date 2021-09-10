package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzby;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzdu;
import com.google.android.gms.internal.measurement.zzlo;
import java.math.BigDecimal;

/* access modifiers changed from: package-private */
public final class s9 extends r9 {
    private final zzcf g;
    final /* synthetic */ t9 h;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    s9(t9 t9Var, String str, int i, zzcf zzcf) {
        super(str, i);
        this.h = t9Var;
        this.g = zzcf;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.r9
    public final int a() {
        return this.g.zzb();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.r9
    public final boolean b() {
        return true;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.r9
    public final boolean c() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean i(Long l, Long l2, zzdu zzdu, boolean z) {
        zzlo.zzb();
        boolean u = this.h.a.x().u(this.a, v2.Z);
        boolean zze = this.g.zze();
        boolean zzf = this.g.zzf();
        boolean zzh = this.g.zzh();
        boolean z2 = zze || zzf || zzh;
        Boolean bool = null;
        Boolean bool2 = null;
        Integer num = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (!z || z2) {
            zzby zzd = this.g.zzd();
            boolean zzf2 = zzd.zzf();
            if (zzdu.zzf()) {
                if (!zzd.zzc()) {
                    this.h.a.c().q().b("No number filter for long property. property", this.h.a.F().q(zzdu.zzc()));
                } else {
                    bool = r9.d(r9.f(zzdu.zzg(), zzd.zzd()), zzf2);
                }
            } else if (zzdu.zzh()) {
                if (!zzd.zzc()) {
                    this.h.a.c().q().b("No number filter for double property. property", this.h.a.F().q(zzdu.zzc()));
                } else {
                    double zzi = zzdu.zzi();
                    try {
                        bool2 = r9.h(new BigDecimal(zzi), zzd.zzd(), Math.ulp(zzi));
                    } catch (NumberFormatException unused) {
                    }
                    bool = r9.d(bool2, zzf2);
                }
            } else if (!zzdu.zzd()) {
                this.h.a.c().q().b("User property has no value, property", this.h.a.F().q(zzdu.zzc()));
            } else if (zzd.zza()) {
                bool = r9.d(r9.e(zzdu.zze(), zzd.zzb(), this.h.a.c()), zzf2);
            } else if (!zzd.zzc()) {
                this.h.a.c().q().b("No string or number filter defined. property", this.h.a.F().q(zzdu.zzc()));
            } else if (d9.A(zzdu.zze())) {
                bool = r9.d(r9.g(zzdu.zze(), zzd.zzd()), zzf2);
            } else {
                this.h.a.c().q().c("Invalid user property value for Numeric number filter. property, value", this.h.a.F().q(zzdu.zzc()), zzdu.zze());
            }
            this.h.a.c().v().b("Property filter result", bool == null ? "null" : bool);
            if (bool == null) {
                return false;
            }
            this.c = Boolean.TRUE;
            if (zzh && !bool.booleanValue()) {
                return true;
            }
            if (!z || this.g.zze()) {
                this.d = bool;
            }
            if (bool.booleanValue() && z2 && zzdu.zza()) {
                long zzb = zzdu.zzb();
                if (l != null) {
                    zzb = l.longValue();
                }
                if (u && this.g.zze() && !this.g.zzf() && l2 != null) {
                    zzb = l2.longValue();
                }
                if (this.g.zzf()) {
                    this.f = Long.valueOf(zzb);
                } else {
                    this.e = Long.valueOf(zzb);
                }
            }
            return true;
        }
        g3 v = this.h.a.c().v();
        Integer valueOf = Integer.valueOf(this.b);
        if (this.g.zza()) {
            num = Integer.valueOf(this.g.zzb());
        }
        v.c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", valueOf, num);
        return true;
    }
}
