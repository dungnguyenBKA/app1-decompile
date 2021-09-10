package com.google.android.gms.internal.gtm;

import java.util.List;

/* access modifiers changed from: package-private */
public final class zztk implements zzww {
    private final zztj zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zztk(zztj zztj) {
        zzvi.zzf(zztj, "input");
        this.zza = zztj;
        zztj.zzc = this;
    }

    private final <T> T zzO(zzwx<T> zzwx, zzuj zzuj) {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            T zze = zzwx.zze();
            zzwx.zzh(zze, this, zzuj);
            zzwx.zzf(zze);
            if (this.zzb == this.zzc) {
                return zze;
            }
            throw zzvk.zzg();
        } finally {
            this.zzc = i;
        }
    }

    private final <T> T zzU(zzwx<T> zzwx, zzuj zzuj) {
        int zzn = ((zzth) this.zza).zzn();
        zztj zztj = this.zza;
        if (zztj.zza < zztj.zzb) {
            int zzb2 = zztj.zzb(zzn);
            T zze = zzwx.zze();
            this.zza.zza++;
            zzwx.zzh(zze, this, zzuj);
            zzwx.zzf(zze);
            this.zza.zzg(0);
            zztj zztj2 = this.zza;
            zztj2.zza--;
            zztj2.zzh(zzb2);
            return zze;
        }
        throw new zzvk("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final void zzV(int i) {
        if (this.zza.zza() != i) {
            throw zzvk.zzj();
        }
    }

    private final void zzW(int i) {
        if ((this.zzb & 7) != i) {
            throw zzvk.zza();
        }
    }

    private static final void zzX(int i) {
        if ((i & 3) != 0) {
            throw zzvk.zzg();
        }
    }

    private static final void zzY(int i) {
        if ((i & 7) != 0) {
            throw zzvk.zzg();
        }
    }

    public static zztk zzp(zztj zztj) {
        zztk zztk = zztj.zzc;
        return zztk != null ? zztk : new zztk(zztj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzA(List<Double> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzug) {
            zzug zzug = (zzug) list;
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    zzug.zze(Double.longBitsToDouble(((zzth) this.zza).zzo()));
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zzn = ((zzth) this.zza).zzn();
                zzY(zzn);
                int zza2 = this.zza.zza() + zzn;
                do {
                    zzug.zze(Double.longBitsToDouble(((zzth) this.zza).zzo()));
                } while (this.zza.zza() < zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(Double.longBitsToDouble(((zzth) this.zza).zzo())));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zzn2 = ((zzth) this.zza).zzn();
                zzY(zzn2);
                int zza3 = this.zza.zza() + zzn2;
                do {
                    list.add(Double.valueOf(Double.longBitsToDouble(((zzth) this.zza).zzo())));
                } while (this.zza.zza() < zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzB(List<Integer> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzva.zzh(((zzth) this.zza).zzn());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzva.zzh(((zzth) this.zza).zzn());
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzn()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzn()));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzC(List<Integer> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = ((zzth) this.zza).zzn();
                zzX(zzn);
                int zza2 = this.zza.zza() + zzn;
                do {
                    zzva.zzh(((zzth) this.zza).zzm());
                } while (this.zza.zza() < zza2);
            } else if (i == 5) {
                do {
                    zzva.zzh(((zzth) this.zza).zzm());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                int zzn2 = ((zzth) this.zza).zzn();
                zzX(zzn2);
                int zza3 = this.zza.zza() + zzn2;
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzm()));
                } while (this.zza.zza() < zza3);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzm()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzD(List<Long> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    zzvz.zzf(((zzth) this.zza).zzo());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zzn = ((zzth) this.zza).zzn();
                zzY(zzn);
                int zza2 = this.zza.zza() + zzn;
                do {
                    zzvz.zzf(((zzth) this.zza).zzo());
                } while (this.zza.zza() < zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzo()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zzn2 = ((zzth) this.zza).zzn();
                zzY(zzn2);
                int zza3 = this.zza.zza() + zzn2;
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzo()));
                } while (this.zza.zza() < zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzE(List<Float> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzuq) {
            zzuq zzuq = (zzuq) list;
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = ((zzth) this.zza).zzn();
                zzX(zzn);
                int zza2 = this.zza.zza() + zzn;
                do {
                    zzuq.zze(Float.intBitsToFloat(((zzth) this.zza).zzm()));
                } while (this.zza.zza() < zza2);
            } else if (i == 5) {
                do {
                    zzuq.zze(Float.intBitsToFloat(((zzth) this.zza).zzm()));
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                int zzn2 = ((zzth) this.zza).zzn();
                zzX(zzn2);
                int zza3 = this.zza.zza() + zzn2;
                do {
                    list.add(Float.valueOf(Float.intBitsToFloat(((zzth) this.zza).zzm())));
                } while (this.zza.zza() < zza3);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(Float.intBitsToFloat(((zzth) this.zza).zzm())));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else {
                throw zzvk.zza();
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> void zzF(List<T> list, zzwx<T> zzwx, zzuj zzuj) {
        int zzc2;
        int i = this.zzb;
        if ((i & 7) == 3) {
            do {
                list.add(zzO(zzwx, zzuj));
                if (!this.zza.zzi() && this.zzd == 0) {
                    zzc2 = this.zza.zzc();
                } else {
                    return;
                }
            } while (zzc2 == i);
            this.zzd = zzc2;
            return;
        }
        throw zzvk.zza();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzG(List<Integer> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzva.zzh(((zzth) this.zza).zzn());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzva.zzh(((zzth) this.zza).zzn());
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzn()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzn()));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzH(List<Long> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzvz.zzf(((zzth) this.zza).zzp());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzvz.zzf(((zzth) this.zza).zzp());
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzp()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzp()));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> void zzI(List<T> list, zzwx<T> zzwx, zzuj zzuj) {
        int zzc2;
        int i = this.zzb;
        if ((i & 7) == 2) {
            do {
                list.add(zzU(zzwx, zzuj));
                if (!this.zza.zzi() && this.zzd == 0) {
                    zzc2 = this.zza.zzc();
                } else {
                    return;
                }
            } while (zzc2 == i);
            this.zzd = zzc2;
            return;
        }
        throw zzvk.zza();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzJ(List<Integer> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = ((zzth) this.zza).zzn();
                zzX(zzn);
                int zza2 = this.zza.zza() + zzn;
                do {
                    zzva.zzh(((zzth) this.zza).zzm());
                } while (this.zza.zza() < zza2);
            } else if (i == 5) {
                do {
                    zzva.zzh(((zzth) this.zza).zzm());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                int zzn2 = ((zzth) this.zza).zzn();
                zzX(zzn2);
                int zza3 = this.zza.zza() + zzn2;
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzm()));
                } while (this.zza.zza() < zza3);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzm()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzK(List<Long> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    zzvz.zzf(((zzth) this.zza).zzo());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zzn = ((zzth) this.zza).zzn();
                zzY(zzn);
                int zza2 = this.zza.zza() + zzn;
                do {
                    zzvz.zzf(((zzth) this.zza).zzo());
                } while (this.zza.zza() < zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzo()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zzn2 = ((zzth) this.zza).zzn();
                zzY(zzn2);
                int zza3 = this.zza.zza() + zzn2;
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzo()));
                } while (this.zza.zza() < zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzL(List<Integer> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzva.zzh(zztj.zzs(((zzth) this.zza).zzn()));
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzva.zzh(zztj.zzs(((zzth) this.zza).zzn()));
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(zztj.zzs(((zzth) this.zza).zzn())));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Integer.valueOf(zztj.zzs(((zzth) this.zza).zzn())));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzM(List<Long> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzvz.zzf(zztj.zzt(((zzth) this.zza).zzp()));
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzvz.zzf(zztj.zzt(((zzth) this.zza).zzp()));
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(zztj.zzt(((zzth) this.zza).zzp())));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Long.valueOf(zztj.zzt(((zzth) this.zza).zzp())));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzN(List<String> list) {
        zzw(list, false);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzP(List<String> list) {
        zzw(list, true);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzQ(List<Integer> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzva.zzh(((zzth) this.zza).zzn());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzva.zzh(((zzth) this.zza).zzn());
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzn()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Integer.valueOf(((zzth) this.zza).zzn()));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzR(List<Long> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzvz.zzf(((zzth) this.zza).zzp());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzvz.zzf(((zzth) this.zza).zzp());
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzp()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Long.valueOf(((zzth) this.zza).zzp()));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final boolean zzS() {
        zzW(0);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final boolean zzT() {
        int i;
        if (this.zza.zzi() || (i = this.zzb) == this.zzc) {
            return false;
        }
        return this.zza.zzk(i);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final double zza() {
        zzW(1);
        return Double.longBitsToDouble(((zzth) this.zza).zzo());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final float zzb() {
        zzW(5);
        return Float.intBitsToFloat(((zzth) this.zza).zzm());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzc() {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zzc();
            this.zzb = i;
        }
        if (i == 0 || i == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return i >>> 3;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zze() {
        zzW(0);
        return ((zzth) this.zza).zzn();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzf() {
        zzW(5);
        return ((zzth) this.zza).zzm();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzg() {
        zzW(0);
        return ((zzth) this.zza).zzn();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzh() {
        zzW(5);
        return ((zzth) this.zza).zzm();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzi() {
        zzW(0);
        return zztj.zzs(((zzth) this.zza).zzn());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzj() {
        zzW(0);
        return ((zzth) this.zza).zzn();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzk() {
        zzW(1);
        return ((zzth) this.zza).zzo();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzl() {
        zzW(0);
        return ((zzth) this.zza).zzp();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzm() {
        zzW(1);
        return ((zzth) this.zza).zzo();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzn() {
        zzW(0);
        return zztj.zzt(((zzth) this.zza).zzp());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzo() {
        zzW(0);
        return ((zzth) this.zza).zzp();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final zztd zzq() {
        zzW(2);
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzr(Class<T> cls, zzuj zzuj) {
        zzW(3);
        return (T) zzO(zzwt.zza().zzb(cls), zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzs(zzwx<T> zzwx, zzuj zzuj) {
        zzW(3);
        return (T) zzO(zzwx, zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzt(Class<T> cls, zzuj zzuj) {
        zzW(2);
        return (T) zzU(zzwt.zza().zzb(cls), zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzu(zzwx<T> zzwx, zzuj zzuj) {
        zzW(2);
        return (T) zzU(zzwx, zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final String zzv() {
        zzW(2);
        return this.zza.zze();
    }

    public final void zzw(List<String> list, boolean z) {
        int zzc2;
        int zzc3;
        if ((this.zzb & 7) != 2) {
            throw zzvk.zza();
        } else if ((list instanceof zzvs) && !z) {
            zzvs zzvs = (zzvs) list;
            do {
                zzvs.zzi(zzq());
                if (!this.zza.zzi()) {
                    zzc3 = this.zza.zzc();
                } else {
                    return;
                }
            } while (zzc3 == this.zzb);
            this.zzd = zzc3;
        } else {
            do {
                list.add(z ? zzx() : zzv());
                if (!this.zza.zzi()) {
                    zzc2 = this.zza.zzc();
                } else {
                    return;
                }
            } while (zzc2 == this.zzb);
            this.zzd = zzc2;
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final String zzx() {
        zzW(2);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzy(List<Boolean> list) {
        int zzc2;
        int zzc3;
        if (list instanceof zzsr) {
            zzsr zzsr = (zzsr) list;
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    zzsr.zze(this.zza.zzj());
                    if (!this.zza.zzi()) {
                        zzc3 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc3 == this.zzb);
                this.zzd = zzc3;
            } else if (i == 2) {
                int zza2 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    zzsr.zze(this.zza.zzj());
                } while (this.zza.zza() < zza2);
                zzV(zza2);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.zza.zzj()));
                    if (!this.zza.zzi()) {
                        zzc2 = this.zza.zzc();
                    } else {
                        return;
                    }
                } while (zzc2 == this.zzb);
                this.zzd = zzc2;
            } else if (i2 == 2) {
                int zza3 = this.zza.zza() + ((zzth) this.zza).zzn();
                do {
                    list.add(Boolean.valueOf(this.zza.zzj()));
                } while (this.zza.zza() < zza3);
                zzV(zza3);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzz(List<zztd> list) {
        int zzc2;
        if ((this.zzb & 7) == 2) {
            do {
                list.add(zzq());
                if (!this.zza.zzi()) {
                    zzc2 = this.zza.zzc();
                } else {
                    return;
                }
            } while (zzc2 == this.zzb);
            this.zzd = zzc2;
            return;
        }
        throw zzvk.zza();
    }
}
