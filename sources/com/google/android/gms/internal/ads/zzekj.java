package com.google.android.gms.internal.ads;

import com.vungle.warren.error.VungleException;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzekj implements zzend {
    private int tag;
    private final zzekc zzimz;
    private int zzina;
    private int zzinb = 0;

    private zzekj(zzekc zzekc) {
        zzekc zzekc2 = (zzekc) zzeld.zza(zzekc, "input");
        this.zzimz = zzekc2;
        zzekc2.zzimo = this;
    }

    public static zzekj zza(zzekc zzekc) {
        zzekj zzekj = zzekc.zzimo;
        if (zzekj != null) {
            return zzekj;
        }
        return new zzekj(zzekc);
    }

    private final <T> T zzc(zzenj<T> zzenj, zzeko zzeko) {
        int zzbhb = this.zzimz.zzbhb();
        zzekc zzekc = this.zzimz;
        if (zzekc.zziml < zzekc.zzimm) {
            int zzgf = zzekc.zzgf(zzbhb);
            T newInstance = zzenj.newInstance();
            this.zzimz.zziml++;
            zzenj.zza(newInstance, this, zzeko);
            zzenj.zzak(newInstance);
            this.zzimz.zzgd(0);
            zzekc zzekc2 = this.zzimz;
            zzekc2.zziml--;
            zzekc2.zzgg(zzgf);
            return newInstance;
        }
        throw new zzelo("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final <T> T zzd(zzenj<T> zzenj, zzeko zzeko) {
        int i = this.zzina;
        this.zzina = ((this.tag >>> 3) << 3) | 4;
        try {
            T newInstance = zzenj.newInstance();
            zzenj.zza(newInstance, this, zzeko);
            zzenj.zzak(newInstance);
            if (this.tag == this.zzina) {
                return newInstance;
            }
            throw zzelo.zzbjh();
        } finally {
            this.zzina = i;
        }
    }

    private final void zzgn(int i) {
        if ((this.tag & 7) != i) {
            throw zzelo.zzbjf();
        }
    }

    private static void zzgo(int i) {
        if ((i & 7) != 0) {
            throw zzelo.zzbjh();
        }
    }

    private static void zzgp(int i) {
        if ((i & 3) != 0) {
            throw zzelo.zzbjh();
        }
    }

    private final void zzgq(int i) {
        if (this.zzimz.zzbhj() != i) {
            throw zzelo.zzbja();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final double readDouble() {
        zzgn(1);
        return this.zzimz.readDouble();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final float readFloat() {
        zzgn(5);
        return this.zzimz.readFloat();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final String readString() {
        zzgn(2);
        return this.zzimz.readString();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void readStringList(List<String> list) {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzaa(List<Integer> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzele.zzhh(this.zzimz.zzbhf());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzele.zzhh(this.zzimz.zzbhf());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhf()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhf()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzab(List<Long> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzemc.zzfr(this.zzimz.zzbhg());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzemc.zzfr(this.zzimz.zzbhg());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhg()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhg()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> T zzb(zzenj<T> zzenj, zzeko zzeko) {
        zzgn(3);
        return (T) zzd(zzenj, zzeko);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbgt() {
        zzgn(0);
        return this.zzimz.zzbgt();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbgu() {
        zzgn(0);
        return this.zzimz.zzbgu();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbgv() {
        zzgn(0);
        return this.zzimz.zzbgv();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbgw() {
        zzgn(1);
        return this.zzimz.zzbgw();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbgx() {
        zzgn(5);
        return this.zzimz.zzbgx();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final boolean zzbgy() {
        zzgn(0);
        return this.zzimz.zzbgy();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final String zzbgz() {
        zzgn(2);
        return this.zzimz.zzbgz();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final zzejr zzbha() {
        zzgn(2);
        return this.zzimz.zzbha();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhb() {
        zzgn(0);
        return this.zzimz.zzbhb();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhc() {
        zzgn(0);
        return this.zzimz.zzbhc();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhd() {
        zzgn(5);
        return this.zzimz.zzbhd();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbhe() {
        zzgn(1);
        return this.zzimz.zzbhe();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhf() {
        zzgn(0);
        return this.zzimz.zzbhf();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final long zzbhg() {
        zzgn(0);
        return this.zzimz.zzbhg();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final int zzbhq() {
        int i = this.zzinb;
        if (i != 0) {
            this.tag = i;
            this.zzinb = 0;
        } else {
            this.tag = this.zzimz.zzbgs();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.zzina) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final boolean zzbhr() {
        int i;
        if (this.zzimz.zzbhi() || (i = this.tag) == this.zzina) {
            return false;
        }
        return this.zzimz.zzge(i);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzm(List<Double> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzekm) {
            zzekm zzekm = (zzekm) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzekm.zze(this.zzimz.readDouble());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgo(zzbhb);
                int zzbhj = this.zzimz.zzbhj() + zzbhb;
                do {
                    zzekm.zze(this.zzimz.readDouble());
                } while (this.zzimz.zzbhj() < zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.zzimz.readDouble()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhb2 = this.zzimz.zzbhb();
                zzgo(zzbhb2);
                int zzbhj2 = this.zzimz.zzbhj() + zzbhb2;
                do {
                    list.add(Double.valueOf(this.zzimz.readDouble()));
                } while (this.zzimz.zzbhj() < zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzn(List<Float> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzela) {
            zzela zzela = (zzela) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgp(zzbhb);
                int zzbhj = this.zzimz.zzbhj() + zzbhb;
                do {
                    zzela.zzh(this.zzimz.readFloat());
                } while (this.zzimz.zzbhj() < zzbhj);
            } else if (i == 5) {
                do {
                    zzela.zzh(this.zzimz.readFloat());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzbhb2 = this.zzimz.zzbhb();
                zzgp(zzbhb2);
                int zzbhj2 = this.zzimz.zzbhj() + zzbhb2;
                do {
                    list.add(Float.valueOf(this.zzimz.readFloat()));
                } while (this.zzimz.zzbhj() < zzbhj2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.zzimz.readFloat()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzo(List<Long> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzemc.zzfr(this.zzimz.zzbgt());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzemc.zzfr(this.zzimz.zzbgt());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgt()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgt()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzp(List<Long> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzemc.zzfr(this.zzimz.zzbgu());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzemc.zzfr(this.zzimz.zzbgu());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgu()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgu()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzq(List<Integer> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzele.zzhh(this.zzimz.zzbgv());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzele.zzhh(this.zzimz.zzbgv());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgv()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgv()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzr(List<Long> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzemc.zzfr(this.zzimz.zzbgw());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgo(zzbhb);
                int zzbhj = this.zzimz.zzbhj() + zzbhb;
                do {
                    zzemc.zzfr(this.zzimz.zzbgw());
                } while (this.zzimz.zzbhj() < zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgw()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhb2 = this.zzimz.zzbhb();
                zzgo(zzbhb2);
                int zzbhj2 = this.zzimz.zzbhj() + zzbhb2;
                do {
                    list.add(Long.valueOf(this.zzimz.zzbgw()));
                } while (this.zzimz.zzbhj() < zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzs(List<Integer> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgp(zzbhb);
                int zzbhj = this.zzimz.zzbhj() + zzbhb;
                do {
                    zzele.zzhh(this.zzimz.zzbgx());
                } while (this.zzimz.zzbhj() < zzbhj);
            } else if (i == 5) {
                do {
                    zzele.zzhh(this.zzimz.zzbgx());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzbhb2 = this.zzimz.zzbhb();
                zzgp(zzbhb2);
                int zzbhj2 = this.zzimz.zzbhj() + zzbhb2;
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgx()));
                } while (this.zzimz.zzbhj() < zzbhj2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbgx()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzt(List<Boolean> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzejp) {
            zzejp zzejp = (zzejp) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzejp.addBoolean(this.zzimz.zzbgy());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzejp.addBoolean(this.zzimz.zzbgy());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.zzimz.zzbgy()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Boolean.valueOf(this.zzimz.zzbgy()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzu(List<String> list) {
        zza(list, true);
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzv(List<zzejr> list) {
        int zzbgs;
        if ((this.tag & 7) == 2) {
            do {
                list.add(zzbha());
                if (!this.zzimz.zzbhi()) {
                    zzbgs = this.zzimz.zzbgs();
                } else {
                    return;
                }
            } while (zzbgs == this.tag);
            this.zzinb = zzbgs;
            return;
        }
        throw zzelo.zzbjf();
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzw(List<Integer> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzele.zzhh(this.zzimz.zzbhb());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzele.zzhh(this.zzimz.zzbhb());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhb()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhb()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzx(List<Integer> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzele.zzhh(this.zzimz.zzbhc());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhj = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    zzele.zzhh(this.zzimz.zzbhc());
                } while (this.zzimz.zzbhj() < zzbhj);
                zzgq(zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhc()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhj2 = this.zzimz.zzbhj() + this.zzimz.zzbhb();
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhc()));
                } while (this.zzimz.zzbhj() < zzbhj2);
                zzgq(zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzy(List<Integer> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzele) {
            zzele zzele = (zzele) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgp(zzbhb);
                int zzbhj = this.zzimz.zzbhj() + zzbhb;
                do {
                    zzele.zzhh(this.zzimz.zzbhd());
                } while (this.zzimz.zzbhj() < zzbhj);
            } else if (i == 5) {
                do {
                    zzele.zzhh(this.zzimz.zzbhd());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzbhb2 = this.zzimz.zzbhb();
                zzgp(zzbhb2);
                int zzbhj2 = this.zzimz.zzbhj() + zzbhb2;
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhd()));
                } while (this.zzimz.zzbhj() < zzbhj2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.zzimz.zzbhd()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final void zzz(List<Long> list) {
        int zzbgs;
        int zzbgs2;
        if (list instanceof zzemc) {
            zzemc zzemc = (zzemc) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzemc.zzfr(this.zzimz.zzbhe());
                    if (!this.zzimz.zzbhi()) {
                        zzbgs2 = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs2 == this.tag);
                this.zzinb = zzbgs2;
            } else if (i == 2) {
                int zzbhb = this.zzimz.zzbhb();
                zzgo(zzbhb);
                int zzbhj = this.zzimz.zzbhj() + zzbhb;
                do {
                    zzemc.zzfr(this.zzimz.zzbhe());
                } while (this.zzimz.zzbhj() < zzbhj);
            } else {
                throw zzelo.zzbjf();
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhe()));
                    if (!this.zzimz.zzbhi()) {
                        zzbgs = this.zzimz.zzbgs();
                    } else {
                        return;
                    }
                } while (zzbgs == this.tag);
                this.zzinb = zzbgs;
            } else if (i2 == 2) {
                int zzbhb2 = this.zzimz.zzbhb();
                zzgo(zzbhb2);
                int zzbhj2 = this.zzimz.zzbhj() + zzbhb2;
                do {
                    list.add(Long.valueOf(this.zzimz.zzbhe()));
                } while (this.zzimz.zzbhj() < zzbhj2);
            } else {
                throw zzelo.zzbjf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> T zza(zzenj<T> zzenj, zzeko zzeko) {
        zzgn(2);
        return (T) zzc(zzenj, zzeko);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> void zzb(List<T> list, zzenj<T> zzenj, zzeko zzeko) {
        int zzbgs;
        int i = this.tag;
        if ((i & 7) == 3) {
            do {
                list.add(zzd(zzenj, zzeko));
                if (!this.zzimz.zzbhi() && this.zzinb == 0) {
                    zzbgs = this.zzimz.zzbgs();
                } else {
                    return;
                }
            } while (zzbgs == i);
            this.zzinb = zzbgs;
            return;
        }
        throw zzelo.zzbjf();
    }

    private final void zza(List<String> list, boolean z) {
        int zzbgs;
        int zzbgs2;
        if ((this.tag & 7) != 2) {
            throw zzelo.zzbjf();
        } else if (!(list instanceof zzelv) || z) {
            do {
                list.add(z ? zzbgz() : readString());
                if (!this.zzimz.zzbhi()) {
                    zzbgs = this.zzimz.zzbgs();
                } else {
                    return;
                }
            } while (zzbgs == this.tag);
            this.zzinb = zzbgs;
        } else {
            zzelv zzelv = (zzelv) list;
            do {
                zzelv.zzak(zzbha());
                if (!this.zzimz.zzbhi()) {
                    zzbgs2 = this.zzimz.zzbgs();
                } else {
                    return;
                }
            } while (zzbgs2 == this.tag);
            this.zzinb = zzbgs2;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzend
    public final <T> void zza(List<T> list, zzenj<T> zzenj, zzeko zzeko) {
        int zzbgs;
        int i = this.tag;
        if ((i & 7) == 2) {
            do {
                list.add(zzc(zzenj, zzeko));
                if (!this.zzimz.zzbhi() && this.zzinb == 0) {
                    zzbgs = this.zzimz.zzbgs();
                } else {
                    return;
                }
            } while (zzbgs == i);
            this.zzinb = zzbgs;
            return;
        }
        throw zzelo.zzbjf();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: java.util.Map<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzend
    public final <K, V> void zza(Map<K, V> map, zzemf<K, V> zzemf, zzeko zzeko) {
        zzgn(2);
        int zzgf = this.zzimz.zzgf(this.zzimz.zzbhb());
        Object obj = zzemf.zzisl;
        Object obj2 = zzemf.zzclv;
        while (true) {
            try {
                int zzbhq = zzbhq();
                if (zzbhq == Integer.MAX_VALUE || this.zzimz.zzbhi()) {
                    map.put(obj, obj2);
                } else if (zzbhq == 1) {
                    obj = zza(zzemf.zzisk, (Class<?>) null, (zzeko) null);
                } else if (zzbhq != 2) {
                    try {
                        if (!zzbhr()) {
                            throw new zzelo("Unable to parse map entry.");
                        }
                    } catch (zzeln unused) {
                        if (!zzbhr()) {
                            throw new zzelo("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = zza(zzemf.zzism, zzemf.zzclv.getClass(), zzeko);
                }
            } finally {
                this.zzimz.zzgg(zzgf);
            }
        }
        map.put(obj, obj2);
    }

    private final Object zza(zzeos zzeos, Class<?> cls, zzeko zzeko) {
        switch (zzeki.zzimy[zzeos.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzbgy());
            case 2:
                return zzbha();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzbhc());
            case 5:
                return Integer.valueOf(zzbgx());
            case 6:
                return Long.valueOf(zzbgw());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzbgv());
            case 9:
                return Long.valueOf(zzbgu());
            case 10:
                zzgn(2);
                return zzc(zzenc.zzbkf().zzh(cls), zzeko);
            case 11:
                return Integer.valueOf(zzbhd());
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                return Long.valueOf(zzbhe());
            case 13:
                return Integer.valueOf(zzbhf());
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return Long.valueOf(zzbhg());
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return zzbgz();
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return Integer.valueOf(zzbhb());
            case 17:
                return Long.valueOf(zzbgt());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }
}
