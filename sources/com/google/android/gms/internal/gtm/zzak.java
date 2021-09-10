package com.google.android.gms.internal.gtm;

import java.util.Iterator;
import java.util.List;

public final class zzak extends zzuv<zzak, zzal> implements zzwl {
    private static final zzvf<Integer, zzao> zze = new zzvf<Integer, zzao>() {
        /* class com.google.android.gms.internal.gtm.zzak.AnonymousClass1 */

        /* renamed from: zza */
        public zzao zzb(Integer num) {
            zzao zzb = zzao.zzb(num.intValue());
            return zzb == null ? zzao.ESCAPE_HTML : zzb;
        }
    };
    private static final zzak zzf;
    private int zzg;
    private int zzh = 1;
    private String zzi = "";
    private zzvh<zzak> zzj = zzuz.zzag();
    private zzvh<zzak> zzk = zzuz.zzag();
    private zzvh<zzak> zzl = zzuz.zzag();
    private String zzm = "";
    private String zzn = "";
    private long zzo;
    private boolean zzp;
    private zzvh<zzak> zzq = zzuz.zzag();
    private zzve zzr = zzuz.zzaf();
    private boolean zzs;
    private byte zzt = 2;

    static {
        zzak zzak = new zzak();
        zzf = zzak;
        zzuz.zzak(zzak.class, zzak);
    }

    private zzak() {
    }

    static /* synthetic */ void zzA(zzak zzak, String str) {
        str.getClass();
        zzak.zzg |= 4;
        zzak.zzm = str;
    }

    static /* synthetic */ void zzB(zzak zzak, String str) {
        str.getClass();
        zzak.zzg |= 8;
        zzak.zzn = str;
    }

    static /* synthetic */ void zzC(zzak zzak, String str) {
        str.getClass();
        zzak.zzg |= 2;
        zzak.zzi = str;
    }

    static /* synthetic */ void zzD(zzak zzak, long j) {
        zzak.zzg |= 16;
        zzak.zzo = j;
    }

    static /* synthetic */ void zzE(zzak zzak, boolean z) {
        zzak.zzg |= 32;
        zzak.zzp = z;
    }

    static /* synthetic */ void zzF(zzak zzak, zzak zzak2) {
        zzak2.getClass();
        zzvh<zzak> zzvh = zzak.zzq;
        if (!zzvh.zzc()) {
            zzak.zzq = zzuz.zzah(zzvh);
        }
        zzak.zzq.add(zzak2);
    }

    static /* synthetic */ void zzH(zzak zzak, Iterable iterable) {
        zzve zzve = zzak.zzr;
        if (!zzve.zzc()) {
            int size = zzve.size();
            zzak.zzr = zzve.zzg(size == 0 ? 10 : size + size);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzak.zzr.zzh(((zzao) it.next()).zza());
        }
    }

    static /* synthetic */ void zzJ(zzak zzak, boolean z) {
        zzak.zzg |= 64;
        zzak.zzs = z;
    }

    static /* synthetic */ void zzK(zzak zzak, zzak zzak2) {
        zzak2.getClass();
        zzak.zzal();
        zzak.zzj.add(zzak2);
    }

    static /* synthetic */ void zzL(zzak zzak, Iterable iterable) {
        zzak.zzal();
        zzsh.zzS(iterable, zzak.zzj);
    }

    static /* synthetic */ void zzP(zzak zzak, int i) {
        zzak.zzh = i;
        zzak.zzg |= 1;
    }

    private final void zzal() {
        zzvh<zzak> zzvh = this.zzj;
        if (!zzvh.zzc()) {
            this.zzj = zzuz.zzah(zzvh);
        }
    }

    private final void zzam() {
        zzvh<zzak> zzvh = this.zzk;
        if (!zzvh.zzc()) {
            this.zzk = zzuz.zzah(zzvh);
        }
    }

    private final void zzan() {
        zzvh<zzak> zzvh = this.zzl;
        if (!zzvh.zzc()) {
            this.zzl = zzuz.zzah(zzvh);
        }
    }

    public static zzal zzg() {
        return (zzal) zzf.zzY();
    }

    public static zzak zzi() {
        return zzf;
    }

    static /* synthetic */ void zzu(zzak zzak, zzak zzak2) {
        zzak2.getClass();
        zzak.zzam();
        zzak.zzk.add(zzak2);
    }

    static /* synthetic */ void zzv(zzak zzak, Iterable iterable) {
        zzak.zzam();
        zzsh.zzS(iterable, zzak.zzk);
    }

    static /* synthetic */ void zzx(zzak zzak, zzak zzak2) {
        zzak2.getClass();
        zzak.zzan();
        zzak.zzl.add(zzak2);
    }

    static /* synthetic */ void zzy(zzak zzak, Iterable iterable) {
        zzak.zzan();
        zzsh.zzS(iterable, zzak.zzl);
    }

    public final boolean zzM() {
        return this.zzp;
    }

    public final boolean zzN() {
        return this.zzs;
    }

    public final int zzO() {
        int zza = zzar.zza(this.zzh);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zza() {
        return this.zzj.size();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzuz
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzt);
        }
        byte b = 1;
        if (i2 == 2) {
            return zzuz.zzaj(zzf, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0005\u0005\u0001ᔌ\u0000\u0002ဈ\u0001\u0003Л\u0004Л\u0005Л\u0006ဈ\u0002\u0007ဈ\u0003\bဂ\u0004\tဇ\u0006\n\u001e\u000bЛ\fဇ\u0005", new Object[]{"zzg", "zzh", zzaq.zza, "zzi", "zzj", zzak.class, "zzk", zzak.class, "zzl", zzak.class, "zzm", "zzn", "zzo", "zzs", "zzr", zzao.zzc(), "zzq", zzak.class, "zzp"});
        } else if (i2 == 3) {
            return new zzak();
        } else {
            if (i2 == 4) {
                return new zzal(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            if (obj == null) {
                b = 0;
            }
            this.zzt = b;
            return null;
        }
    }

    public final int zzc() {
        return this.zzk.size();
    }

    public final int zzd() {
        return this.zzl.size();
    }

    public final int zze() {
        return this.zzq.size();
    }

    public final long zzf() {
        return this.zzo;
    }

    public final zzak zzj(int i) {
        return this.zzj.get(i);
    }

    public final zzak zzk(int i) {
        return this.zzk.get(i);
    }

    public final zzak zzl(int i) {
        return this.zzl.get(i);
    }

    public final zzak zzm(int i) {
        return this.zzq.get(i);
    }

    public final String zzn() {
        return this.zzn;
    }

    public final String zzo() {
        return this.zzm;
    }

    public final String zzp() {
        return this.zzi;
    }

    public final List<zzao> zzq() {
        return new zzvg(this.zzr, zze);
    }

    public final List<zzak> zzr() {
        return this.zzj;
    }

    public final List<zzak> zzs() {
        return this.zzq;
    }
}
