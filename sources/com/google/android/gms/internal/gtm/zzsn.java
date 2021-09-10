package com.google.android.gms.internal.gtm;

import java.nio.ByteBuffer;
import java.util.List;

final class zzsn extends zzsp {
    private final byte[] zza;
    private int zzb;
    private int zzc;
    private int zzd;
    private int zze;

    public zzsn(ByteBuffer byteBuffer, boolean z) {
        super(null);
        this.zza = byteBuffer.array();
        this.zzb = byteBuffer.position() + byteBuffer.arrayOffset();
        this.zzc = byteBuffer.limit() + byteBuffer.arrayOffset();
    }

    private final byte zzU() {
        int i = this.zzb;
        if (i != this.zzc) {
            byte[] bArr = this.zza;
            this.zzb = i + 1;
            return bArr[i];
        }
        throw zzvk.zzj();
    }

    private final int zzV() {
        zzad(4);
        return zzW();
    }

    private final int zzW() {
        int i = this.zzb;
        byte[] bArr = this.zza;
        this.zzb = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final int zzX() {
        int i;
        int i2 = this.zzb;
        int i3 = this.zzc;
        if (i3 != i2) {
            byte[] bArr = this.zza;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzb = i4;
                return b;
            } else if (i3 - i4 < 9) {
                return (int) zzaa();
            } else {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ -128;
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ -2080896;
                        } else {
                            i7 = i5 + 1;
                            byte b2 = bArr[i5];
                            i = (i9 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i5 = i7 + 1;
                                if (bArr[i7] < 0) {
                                    i7 = i5 + 1;
                                    if (bArr[i5] < 0) {
                                        i5 = i7 + 1;
                                        if (bArr[i7] < 0) {
                                            i7 = i5 + 1;
                                            if (bArr[i5] < 0) {
                                                i5 = i7 + 1;
                                                if (bArr[i7] < 0) {
                                                    throw zzvk.zze();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i5 = i7;
                }
                this.zzb = i5;
                return i;
            }
        } else {
            throw zzvk.zzj();
        }
    }

    private final long zzY() {
        zzad(8);
        return zzZ();
    }

    private final long zzZ() {
        int i = this.zzb;
        byte[] bArr = this.zza;
        this.zzb = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private final long zzaa() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzU = zzU();
            j |= ((long) (zzU & Byte.MAX_VALUE)) << i;
            if ((zzU & 128) == 0) {
                return j;
            }
        }
        throw zzvk.zze();
    }

    private final <T> T zzab(zzwx<T> zzwx, zzuj zzuj) {
        int i = this.zze;
        this.zze = ((this.zzd >>> 3) << 3) | 4;
        try {
            T zze2 = zzwx.zze();
            zzwx.zzh(zze2, this, zzuj);
            zzwx.zzf(zze2);
            if (this.zzd == this.zze) {
                return zze2;
            }
            throw zzvk.zzg();
        } finally {
            this.zze = i;
        }
    }

    private final <T> T zzac(zzwx<T> zzwx, zzuj zzuj) {
        int zzX = zzX();
        zzad(zzX);
        int i = this.zzc;
        int i2 = this.zzb + zzX;
        this.zzc = i2;
        try {
            T zze2 = zzwx.zze();
            zzwx.zzh(zze2, this, zzuj);
            zzwx.zzf(zze2);
            if (this.zzb == i2) {
                return zze2;
            }
            throw zzvk.zzg();
        } finally {
            this.zzc = i;
        }
    }

    private final void zzad(int i) {
        if (i < 0 || i > this.zzc - this.zzb) {
            throw zzvk.zzj();
        }
    }

    private final void zzae(int i) {
        if (this.zzb != i) {
            throw zzvk.zzj();
        }
    }

    private final void zzaf(int i) {
        if ((this.zzd & 7) != i) {
            throw zzvk.zza();
        }
    }

    private final void zzag(int i) {
        zzad(i);
        this.zzb += i;
    }

    private final void zzah(int i) {
        zzad(i);
        if ((i & 3) != 0) {
            throw zzvk.zzg();
        }
    }

    private final void zzai(int i) {
        zzad(i);
        if ((i & 7) != 0) {
            throw zzvk.zzg();
        }
    }

    private final boolean zzaj() {
        return this.zzb == this.zzc;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzA(List<Double> list) {
        int i;
        int i2;
        if (list instanceof zzug) {
            zzug zzug = (zzug) list;
            int i3 = this.zzd & 7;
            if (i3 == 1) {
                do {
                    zzug.zze(zza());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = zzX();
                zzai(zzX);
                int i4 = this.zzb + zzX;
                while (this.zzb < i4) {
                    zzug.zze(Double.longBitsToDouble(zzZ()));
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i5 = this.zzd & 7;
            if (i5 == 1) {
                do {
                    list.add(Double.valueOf(zza()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i5 == 2) {
                int zzX2 = zzX();
                zzai(zzX2);
                int i6 = this.zzb + zzX2;
                while (this.zzb < i6) {
                    list.add(Double.valueOf(Double.longBitsToDouble(zzZ())));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzB(List<Integer> list) {
        int i;
        int i2;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzva.zzh(zze());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzva.zzh(zzX());
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zze()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Integer.valueOf(zzX()));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzC(List<Integer> list) {
        int i;
        int i2;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i3 = this.zzd & 7;
            if (i3 == 2) {
                int zzX = zzX();
                zzah(zzX);
                int i4 = this.zzb + zzX;
                while (this.zzb < i4) {
                    zzva.zzh(zzW());
                }
            } else if (i3 == 5) {
                do {
                    zzva.zzh(zzf());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else {
                throw zzvk.zza();
            }
        } else {
            int i5 = this.zzd & 7;
            if (i5 == 2) {
                int zzX2 = zzX();
                zzah(zzX2);
                int i6 = this.zzb + zzX2;
                while (this.zzb < i6) {
                    list.add(Integer.valueOf(zzW()));
                }
            } else if (i5 == 5) {
                do {
                    list.add(Integer.valueOf(zzf()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzD(List<Long> list) {
        int i;
        int i2;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i3 = this.zzd & 7;
            if (i3 == 1) {
                do {
                    zzvz.zzf(zzk());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = zzX();
                zzai(zzX);
                int i4 = this.zzb + zzX;
                while (this.zzb < i4) {
                    zzvz.zzf(zzZ());
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i5 = this.zzd & 7;
            if (i5 == 1) {
                do {
                    list.add(Long.valueOf(zzk()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i5 == 2) {
                int zzX2 = zzX();
                zzai(zzX2);
                int i6 = this.zzb + zzX2;
                while (this.zzb < i6) {
                    list.add(Long.valueOf(zzZ()));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzE(List<Float> list) {
        int i;
        int i2;
        if (list instanceof zzuq) {
            zzuq zzuq = (zzuq) list;
            int i3 = this.zzd & 7;
            if (i3 == 2) {
                int zzX = zzX();
                zzah(zzX);
                int i4 = this.zzb + zzX;
                while (this.zzb < i4) {
                    zzuq.zze(Float.intBitsToFloat(zzW()));
                }
            } else if (i3 == 5) {
                do {
                    zzuq.zze(zzb());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else {
                throw zzvk.zza();
            }
        } else {
            int i5 = this.zzd & 7;
            if (i5 == 2) {
                int zzX2 = zzX();
                zzah(zzX2);
                int i6 = this.zzb + zzX2;
                while (this.zzb < i6) {
                    list.add(Float.valueOf(Float.intBitsToFloat(zzW())));
                }
            } else if (i5 == 5) {
                do {
                    list.add(Float.valueOf(zzb()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else {
                throw zzvk.zza();
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> void zzF(List<T> list, zzwx<T> zzwx, zzuj zzuj) {
        int i;
        int i2 = this.zzd;
        if ((i2 & 7) == 3) {
            do {
                list.add(zzab(zzwx, zzuj));
                if (!zzaj()) {
                    i = this.zzb;
                } else {
                    return;
                }
            } while (zzX() == i2);
            this.zzb = i;
            return;
        }
        throw zzvk.zza();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzG(List<Integer> list) {
        int i;
        int i2;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzva.zzh(zzg());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzva.zzh(zzX());
                }
                zzae(zzX);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzg()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Integer.valueOf(zzX()));
                }
                zzae(zzX2);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzH(List<Long> list) {
        int i;
        int i2;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzvz.zzf(zzl());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzvz.zzf(zzp());
                }
                zzae(zzX);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(zzl()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Long.valueOf(zzp()));
                }
                zzae(zzX2);
            } else {
                throw zzvk.zza();
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.List<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> void zzI(List<T> list, zzwx<T> zzwx, zzuj zzuj) {
        int i;
        int i2 = this.zzd;
        if ((i2 & 7) == 2) {
            do {
                list.add(zzac(zzwx, zzuj));
                if (!zzaj()) {
                    i = this.zzb;
                } else {
                    return;
                }
            } while (zzX() == i2);
            this.zzb = i;
            return;
        }
        throw zzvk.zza();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzJ(List<Integer> list) {
        int i;
        int i2;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i3 = this.zzd & 7;
            if (i3 == 2) {
                int zzX = zzX();
                zzah(zzX);
                int i4 = this.zzb + zzX;
                while (this.zzb < i4) {
                    zzva.zzh(zzW());
                }
            } else if (i3 == 5) {
                do {
                    zzva.zzh(zzh());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else {
                throw zzvk.zza();
            }
        } else {
            int i5 = this.zzd & 7;
            if (i5 == 2) {
                int zzX2 = zzX();
                zzah(zzX2);
                int i6 = this.zzb + zzX2;
                while (this.zzb < i6) {
                    list.add(Integer.valueOf(zzW()));
                }
            } else if (i5 == 5) {
                do {
                    list.add(Integer.valueOf(zzh()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzK(List<Long> list) {
        int i;
        int i2;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i3 = this.zzd & 7;
            if (i3 == 1) {
                do {
                    zzvz.zzf(zzm());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = zzX();
                zzai(zzX);
                int i4 = this.zzb + zzX;
                while (this.zzb < i4) {
                    zzvz.zzf(zzZ());
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i5 = this.zzd & 7;
            if (i5 == 1) {
                do {
                    list.add(Long.valueOf(zzm()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i5 == 2) {
                int zzX2 = zzX();
                zzai(zzX2);
                int i6 = this.zzb + zzX2;
                while (this.zzb < i6) {
                    list.add(Long.valueOf(zzZ()));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzL(List<Integer> list) {
        int i;
        int i2;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzva.zzh(zzi());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzva.zzh(zztj.zzs(zzX()));
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzi()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Integer.valueOf(zztj.zzs(zzX())));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzM(List<Long> list) {
        int i;
        int i2;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzvz.zzf(zzn());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzvz.zzf(zztj.zzt(zzp()));
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(zzn()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Long.valueOf(zztj.zzt(zzp())));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzN(List<String> list) {
        zzO(list, false);
    }

    public final void zzO(List<String> list, boolean z) {
        int i;
        int i2;
        if ((this.zzd & 7) != 2) {
            throw zzvk.zza();
        } else if ((list instanceof zzvs) && !z) {
            zzvs zzvs = (zzvs) list;
            do {
                zzvs.zzi(zzq());
                if (!zzaj()) {
                    i2 = this.zzb;
                } else {
                    return;
                }
            } while (zzX() == this.zzd);
            this.zzb = i2;
        } else {
            do {
                list.add(zzw(z));
                if (!zzaj()) {
                    i = this.zzb;
                } else {
                    return;
                }
            } while (zzX() == this.zzd);
            this.zzb = i;
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzP(List<String> list) {
        zzO(list, true);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzQ(List<Integer> list) {
        int i;
        int i2;
        if (list instanceof zzva) {
            zzva zzva = (zzva) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzva.zzh(zzj());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzva.zzh(zzX());
                }
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(zzj()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Integer.valueOf(zzX()));
                }
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzR(List<Long> list) {
        int i;
        int i2;
        if (list instanceof zzvz) {
            zzvz zzvz = (zzvz) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzvz.zzf(zzo());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzvz.zzf(zzp());
                }
                zzae(zzX);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(zzo()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Long.valueOf(zzp()));
                }
                zzae(zzX2);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final boolean zzS() {
        zzaf(0);
        if (zzX() != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0037  */
    @Override // com.google.android.gms.internal.gtm.zzww
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzT() {
        /*
        // Method dump skipped, instructions count: 134
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzsn.zzT():boolean");
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final double zza() {
        zzaf(1);
        return Double.longBitsToDouble(zzY());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final float zzb() {
        zzaf(5);
        return Float.intBitsToFloat(zzV());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzc() {
        if (zzaj()) {
            return Integer.MAX_VALUE;
        }
        int zzX = zzX();
        this.zzd = zzX;
        if (zzX == this.zze) {
            return Integer.MAX_VALUE;
        }
        return zzX >>> 3;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zze() {
        zzaf(0);
        return zzX();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzf() {
        zzaf(5);
        return zzV();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzg() {
        zzaf(0);
        return zzX();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzh() {
        zzaf(5);
        return zzV();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzi() {
        zzaf(0);
        return zztj.zzs(zzX());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final int zzj() {
        zzaf(0);
        return zzX();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzk() {
        zzaf(1);
        return zzY();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzl() {
        zzaf(0);
        return zzp();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzm() {
        zzaf(1);
        return zzY();
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzn() {
        zzaf(0);
        return zztj.zzt(zzp());
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final long zzo() {
        zzaf(0);
        return zzp();
    }

    public final long zzp() {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        int i2 = this.zzb;
        int i3 = this.zzc;
        if (i3 != i2) {
            byte[] bArr = this.zza;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzb = i4;
                return (long) b;
            } else if (i3 - i4 < 9) {
                return zzaa();
            } else {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ -128;
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        j2 = (long) (i8 ^ 16256);
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ -2080896;
                        } else {
                            i7 = i5 + 1;
                            long j5 = (((long) bArr[i5]) << 28) ^ ((long) i9);
                            if (j5 >= 0) {
                                j4 = 266354560;
                            } else {
                                int i10 = i7 + 1;
                                long j6 = j5 ^ (((long) bArr[i7]) << 35);
                                if (j6 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i7 = i10 + 1;
                                    j5 = j6 ^ (((long) bArr[i10]) << 42);
                                    if (j5 >= 0) {
                                        j4 = 4363953127296L;
                                    } else {
                                        i10 = i7 + 1;
                                        j6 = j5 ^ (((long) bArr[i7]) << 49);
                                        if (j6 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i7 = i10 + 1;
                                            j2 = (j6 ^ (((long) bArr[i10]) << 56)) ^ 71499008037633920L;
                                            if (j2 < 0) {
                                                i10 = i7 + 1;
                                                if (((long) bArr[i7]) >= 0) {
                                                    j = j2;
                                                    i5 = i10;
                                                    this.zzb = i5;
                                                    return j;
                                                }
                                                throw zzvk.zze();
                                            }
                                        }
                                    }
                                }
                                j = j3 ^ j6;
                                i5 = i10;
                                this.zzb = i5;
                                return j;
                            }
                            j2 = j5 ^ j4;
                        }
                    }
                    i5 = i7;
                    j = j2;
                    this.zzb = i5;
                    return j;
                }
                j = (long) i;
                this.zzb = i5;
                return j;
            }
        } else {
            throw zzvk.zzj();
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final zztd zzq() {
        zzaf(2);
        int zzX = zzX();
        if (zzX == 0) {
            return zztd.zzb;
        }
        zzad(zzX);
        zztd zzq = zztd.zzq(this.zza, this.zzb, zzX);
        this.zzb += zzX;
        return zzq;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzr(Class<T> cls, zzuj zzuj) {
        zzaf(3);
        return (T) zzab(zzwt.zza().zzb(cls), zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzs(zzwx<T> zzwx, zzuj zzuj) {
        zzaf(3);
        return (T) zzab(zzwx, zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzt(Class<T> cls, zzuj zzuj) {
        zzaf(2);
        return (T) zzac(zzwt.zza().zzb(cls), zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final <T> T zzu(zzwx<T> zzwx, zzuj zzuj) {
        zzaf(2);
        return (T) zzac(zzwx, zzuj);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final String zzv() {
        return zzw(false);
    }

    public final String zzw(boolean z) {
        zzaf(2);
        int zzX = zzX();
        if (zzX == 0) {
            return "";
        }
        zzad(zzX);
        if (z) {
            byte[] bArr = this.zza;
            int i = this.zzb;
            if (!zzyd.zzf(bArr, i, i + zzX)) {
                throw zzvk.zzd();
            }
        }
        String str = new String(this.zza, this.zzb, zzX, zzvi.zza);
        this.zzb += zzX;
        return str;
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final String zzx() {
        return zzw(true);
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzy(List<Boolean> list) {
        int i;
        int i2;
        if (list instanceof zzsr) {
            zzsr zzsr = (zzsr) list;
            int i3 = this.zzd & 7;
            if (i3 == 0) {
                do {
                    zzsr.zze(zzS());
                    if (!zzaj()) {
                        i2 = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i2;
            } else if (i3 == 2) {
                int zzX = this.zzb + zzX();
                while (this.zzb < zzX) {
                    zzsr.zze(zzX() != 0);
                }
                zzae(zzX);
            } else {
                throw zzvk.zza();
            }
        } else {
            int i4 = this.zzd & 7;
            if (i4 == 0) {
                do {
                    list.add(Boolean.valueOf(zzS()));
                    if (!zzaj()) {
                        i = this.zzb;
                    } else {
                        return;
                    }
                } while (zzX() == this.zzd);
                this.zzb = i;
            } else if (i4 == 2) {
                int zzX2 = this.zzb + zzX();
                while (this.zzb < zzX2) {
                    list.add(Boolean.valueOf(zzX() != 0));
                }
                zzae(zzX2);
            } else {
                throw zzvk.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzww
    public final void zzz(List<zztd> list) {
        int i;
        if ((this.zzd & 7) == 2) {
            do {
                list.add(zzq());
                if (!zzaj()) {
                    i = this.zzb;
                } else {
                    return;
                }
            } while (zzX() == this.zzd);
            this.zzb = i;
            return;
        }
        throw zzvk.zza();
    }
}
