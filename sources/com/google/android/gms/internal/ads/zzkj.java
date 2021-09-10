package com.google.android.gms.internal.ads;

import java.util.Stack;

/* access modifiers changed from: package-private */
public final class zzkj implements zzko {
    private final byte[] zzapa = new byte[8];
    private final Stack<zzkl> zzapb = new Stack<>();
    private final zzkt zzapc = new zzkt();
    private zzkn zzapd;
    private int zzape;
    private int zzapf;
    private long zzapg;

    zzkj() {
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final void reset() {
        this.zzape = 0;
        this.zzapb.clear();
        this.zzapc.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final void zza(zzkn zzkn) {
        this.zzapd = zzkn;
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final boolean zzb(zzjz zzjz) {
        String str;
        double d;
        int zzao;
        int zza;
        zzpg.checkState(this.zzapd != null);
        while (true) {
            if (this.zzapb.isEmpty() || zzjz.getPosition() < this.zzapb.peek().zzapj) {
                if (this.zzape == 0) {
                    long zza2 = this.zzapc.zza(zzjz, true, false, 4);
                    if (zza2 == -2) {
                        zzjz.zzgq();
                        while (true) {
                            zzjz.zza(this.zzapa, 0, 4);
                            zzao = zzkt.zzao(this.zzapa[0]);
                            if (zzao != -1 && zzao <= 4) {
                                zza = (int) zzkt.zza(this.zzapa, zzao, false);
                                if (this.zzapd.zzam(zza)) {
                                    break;
                                }
                            }
                            zzjz.zzag(1);
                        }
                        zzjz.zzag(zzao);
                        zza2 = (long) zza;
                    }
                    if (zza2 == -1) {
                        return false;
                    }
                    this.zzapf = (int) zza2;
                    this.zzape = 1;
                }
                if (this.zzape == 1) {
                    this.zzapg = this.zzapc.zza(zzjz, false, true, 8);
                    this.zzape = 2;
                }
                int zzal = this.zzapd.zzal(this.zzapf);
                if (zzal == 0) {
                    zzjz.zzag((int) this.zzapg);
                    this.zzape = 0;
                } else if (zzal == 1) {
                    long position = zzjz.getPosition();
                    this.zzapb.add(new zzkl(this.zzapf, this.zzapg + position));
                    this.zzapd.zzd(this.zzapf, position, this.zzapg);
                    this.zzape = 0;
                    return true;
                } else if (zzal == 2) {
                    long j = this.zzapg;
                    if (j <= 8) {
                        this.zzapd.zzd(this.zzapf, zza(zzjz, (int) j));
                        this.zzape = 0;
                        return true;
                    }
                    long j2 = this.zzapg;
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j2);
                    throw new zzhw(sb.toString());
                } else if (zzal == 3) {
                    long j3 = this.zzapg;
                    if (j3 <= 2147483647L) {
                        zzkn zzkn = this.zzapd;
                        int i = this.zzapf;
                        int i2 = (int) j3;
                        if (i2 == 0) {
                            str = "";
                        } else {
                            byte[] bArr = new byte[i2];
                            zzjz.readFully(bArr, 0, i2);
                            str = new String(bArr);
                        }
                        zzkn.zza(i, str);
                        this.zzape = 0;
                        return true;
                    }
                    long j4 = this.zzapg;
                    StringBuilder sb2 = new StringBuilder(41);
                    sb2.append("String element size: ");
                    sb2.append(j4);
                    throw new zzhw(sb2.toString());
                } else if (zzal == 4) {
                    this.zzapd.zza(this.zzapf, (int) this.zzapg, zzjz);
                    this.zzape = 0;
                    return true;
                } else if (zzal == 5) {
                    long j5 = this.zzapg;
                    if (j5 == 4 || j5 == 8) {
                        zzkn zzkn2 = this.zzapd;
                        int i3 = this.zzapf;
                        int i4 = (int) j5;
                        long zza3 = zza(zzjz, i4);
                        if (i4 == 4) {
                            d = (double) Float.intBitsToFloat((int) zza3);
                        } else {
                            d = Double.longBitsToDouble(zza3);
                        }
                        zzkn2.zza(i3, d);
                        this.zzape = 0;
                        return true;
                    }
                    long j6 = this.zzapg;
                    StringBuilder sb3 = new StringBuilder(40);
                    sb3.append("Invalid float size: ");
                    sb3.append(j6);
                    throw new zzhw(sb3.toString());
                } else {
                    throw new zzhw(ic.C(32, "Invalid element type ", zzal));
                }
            } else {
                this.zzapd.zzan(this.zzapb.pop().zzapf);
                return true;
            }
        }
    }

    private final long zza(zzjz zzjz, int i) {
        zzjz.readFully(this.zzapa, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.zzapa[i2] & 255));
        }
        return j;
    }
}
