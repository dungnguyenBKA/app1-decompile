package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
import org.apache.http.HttpStatus;

final class zzjg {
    private final int zzahp;
    private float zzaib = 1.0f;
    private float zzaic = 1.0f;
    private final int zzamx;
    private final int zzamy;
    private final int zzamz;
    private final int zzana;
    private final short[] zzanb;
    private int zzanc;
    private short[] zzand;
    private int zzane;
    private short[] zzanf;
    private int zzang;
    private short[] zzanh;
    private int zzani = 0;
    private int zzanj = 0;
    private int zzank;
    private int zzanl;
    private int zzanm;
    private int zzann;
    private int zzano = 0;
    private int zzanp;
    private int zzanq;
    private int zzanr;

    public zzjg(int i, int i2) {
        this.zzahp = i;
        this.zzamx = i2;
        this.zzamy = i / HttpStatus.SC_BAD_REQUEST;
        int i3 = i / 65;
        this.zzamz = i3;
        int i4 = i3 * 2;
        this.zzana = i4;
        this.zzanb = new short[i4];
        this.zzanc = i4;
        this.zzand = new short[(i4 * i2)];
        this.zzane = i4;
        this.zzanf = new short[(i4 * i2)];
        this.zzang = i4;
        this.zzanh = new short[(i4 * i2)];
    }

    private final void zzgg() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.zzanl;
        float f = this.zzaib / this.zzaic;
        double d = (double) f;
        int i8 = 1;
        if (d > 1.00001d || d < 0.99999d) {
            int i9 = this.zzank;
            if (i9 >= this.zzana) {
                int i10 = 0;
                while (true) {
                    int i11 = this.zzann;
                    if (i11 > 0) {
                        int min = Math.min(this.zzana, i11);
                        zza(this.zzand, i10, min);
                        this.zzann -= min;
                        i10 += min;
                    } else {
                        short[] sArr = this.zzand;
                        int i12 = this.zzahp;
                        int i13 = i12 > 4000 ? i12 / 4000 : 1;
                        if (this.zzamx == i8 && i13 == i8) {
                            i4 = zza(sArr, i10, this.zzamy, this.zzamz);
                        } else {
                            zzb(sArr, i10, i13);
                            int zza = zza(this.zzanb, 0, this.zzamy / i13, this.zzamz / i13);
                            if (i13 != i8) {
                                int i14 = zza * i13;
                                int i15 = i13 << 2;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.zzamy;
                                if (i16 < i18) {
                                    i16 = i18;
                                }
                                int i19 = this.zzamz;
                                if (i17 > i19) {
                                    i17 = i19;
                                }
                                if (this.zzamx == i8) {
                                    i4 = zza(sArr, i10, i16, i17);
                                } else {
                                    zzb(sArr, i10, i8);
                                    i4 = zza(this.zzanb, 0, i16, i17);
                                }
                            } else {
                                i4 = zza;
                            }
                        }
                        int i20 = this.zzanq;
                        int i21 = i20 != 0 && this.zzano != 0 && this.zzanr <= i20 * 3 && (i20 << 1) > this.zzanp * 3 ? this.zzano : i4;
                        this.zzanp = i20;
                        this.zzano = i4;
                        if (d > 1.0d) {
                            short[] sArr2 = this.zzand;
                            if (f >= 2.0f) {
                                i6 = (int) (((float) i21) / (f - 1.0f));
                            } else {
                                this.zzann = (int) (((2.0f - f) * ((float) i21)) / (f - 1.0f));
                                i6 = i21;
                            }
                            zzy(i6);
                            zza(i6, this.zzamx, this.zzanf, this.zzanl, sArr2, i10, sArr2, i10 + i21);
                            this.zzanl += i6;
                            i10 = i21 + i6 + i10;
                        } else {
                            short[] sArr3 = this.zzand;
                            if (f < 0.5f) {
                                i5 = (int) ((((float) i21) * f) / (1.0f - f));
                            } else {
                                this.zzann = (int) ((((2.0f * f) - 1.0f) * ((float) i21)) / (1.0f - f));
                                i5 = i21;
                            }
                            int i22 = i21 + i5;
                            zzy(i22);
                            int i23 = this.zzamx;
                            System.arraycopy(sArr3, i10 * i23, this.zzanf, this.zzanl * i23, i23 * i21);
                            zza(i5, this.zzamx, this.zzanf, this.zzanl + i21, sArr3, i21 + i10, sArr3, i10);
                            this.zzanl += i22;
                            i10 += i5;
                        }
                    }
                    if (this.zzana + i10 > i9) {
                        break;
                    }
                    i8 = 1;
                }
                int i24 = this.zzank - i10;
                short[] sArr4 = this.zzand;
                int i25 = this.zzamx;
                System.arraycopy(sArr4, i10 * i25, sArr4, 0, i25 * i24);
                this.zzank = i24;
            }
        } else {
            zza(this.zzand, 0, this.zzank);
            this.zzank = 0;
        }
        float f2 = this.zzaic;
        if (f2 != 1.0f && this.zzanl != i7) {
            int i26 = this.zzahp;
            int i27 = (int) (((float) i26) / f2);
            while (true) {
                if (i27 <= 16384 && i26 <= 16384) {
                    break;
                }
                i27 /= 2;
                i26 /= 2;
            }
            int i28 = this.zzanl - i7;
            int i29 = this.zzanm + i28;
            int i30 = this.zzang;
            if (i29 > i30) {
                int i31 = (i30 / 2) + i28 + i30;
                this.zzang = i31;
                this.zzanh = Arrays.copyOf(this.zzanh, i31 * this.zzamx);
            }
            short[] sArr5 = this.zzanf;
            int i32 = this.zzamx;
            System.arraycopy(sArr5, i7 * i32, this.zzanh, this.zzanm * i32, i32 * i28);
            this.zzanl = i7;
            this.zzanm += i28;
            int i33 = 0;
            while (true) {
                i = this.zzanm;
                if (i33 >= i - 1) {
                    break;
                }
                while (true) {
                    i2 = this.zzani;
                    int i34 = (i2 + 1) * i27;
                    i3 = this.zzanj;
                    if (i34 <= i3 * i26) {
                        break;
                    }
                    zzy(1);
                    int i35 = 0;
                    while (true) {
                        int i36 = this.zzamx;
                        if (i35 >= i36) {
                            break;
                        }
                        short[] sArr6 = this.zzanh;
                        int i37 = (i33 * i36) + i35;
                        short s = sArr6[i37];
                        short s2 = sArr6[i37 + i36];
                        int i38 = this.zzani;
                        int i39 = i38 * i27;
                        int i40 = (i38 + 1) * i27;
                        int i41 = i40 - (this.zzanj * i26);
                        int i42 = i40 - i39;
                        this.zzanf[(this.zzanl * i36) + i35] = (short) ((((i42 - i41) * s2) + (s * i41)) / i42);
                        i35++;
                    }
                    this.zzanj++;
                    this.zzanl++;
                }
                int i43 = i2 + 1;
                this.zzani = i43;
                if (i43 == i26) {
                    this.zzani = 0;
                    zzpg.checkState(i3 == i27);
                    this.zzanj = 0;
                }
                i33++;
            }
            int i44 = i - 1;
            if (i44 != 0) {
                short[] sArr7 = this.zzanh;
                int i45 = this.zzamx;
                System.arraycopy(sArr7, i44 * i45, sArr7, 0, (i - i44) * i45);
                this.zzanm -= i44;
            }
        }
    }

    private final void zzy(int i) {
        int i2 = this.zzanl + i;
        int i3 = this.zzane;
        if (i2 > i3) {
            int i4 = (i3 / 2) + i + i3;
            this.zzane = i4;
            this.zzanf = Arrays.copyOf(this.zzanf, i4 * this.zzamx);
        }
    }

    private final void zzz(int i) {
        int i2 = this.zzank + i;
        int i3 = this.zzanc;
        if (i2 > i3) {
            int i4 = (i3 / 2) + i + i3;
            this.zzanc = i4;
            this.zzand = Arrays.copyOf(this.zzand, i4 * this.zzamx);
        }
    }

    public final void setSpeed(float f) {
        this.zzaib = f;
    }

    public final void zza(float f) {
        this.zzaic = f;
    }

    public final void zzb(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.zzamx, this.zzanl);
        shortBuffer.put(this.zzanf, 0, this.zzamx * min);
        int i = this.zzanl - min;
        this.zzanl = i;
        short[] sArr = this.zzanf;
        int i2 = this.zzamx;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public final void zzfl() {
        int i;
        int i2 = this.zzank;
        float f = this.zzaib;
        float f2 = this.zzaic;
        int i3 = this.zzanl + ((int) ((((((float) i2) / (f / f2)) + ((float) this.zzanm)) / f2) + 0.5f));
        zzz((this.zzana * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.zzana;
            int i5 = this.zzamx;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.zzand[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.zzank = (i * 2) + this.zzank;
        zzgg();
        if (this.zzanl > i3) {
            this.zzanl = i3;
        }
        this.zzank = 0;
        this.zzann = 0;
        this.zzanm = 0;
    }

    public final int zzgf() {
        return this.zzanl;
    }

    public final void zza(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.zzamx;
        int i2 = remaining / i;
        zzz(i2);
        shortBuffer.get(this.zzand, this.zzank * this.zzamx, ((i * i2) << 1) / 2);
        this.zzank += i2;
        zzgg();
    }

    private final void zzb(short[] sArr, int i, int i2) {
        int i3 = this.zzana / i2;
        int i4 = this.zzamx;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.zzanb[i7] = (short) (i8 / i5);
        }
    }

    private final void zza(short[] sArr, int i, int i2) {
        zzy(i2);
        int i3 = this.zzamx;
        System.arraycopy(sArr, i * i3, this.zzanf, this.zzanl * i3, i3 * i2);
        this.zzanl += i2;
    }

    private final int zza(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.zzamx;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s = sArr[i4 + i10];
                short s2 = sArr[i4 + i2 + i10];
                i9 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i9 * i7 < i5 * i2) {
                i7 = i2;
                i5 = i9;
            }
            if (i9 * i6 > i8 * i2) {
                i6 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.zzanq = i5 / i7;
        this.zzanr = i8 / i6;
        return i7;
    }

    private static void zza(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }
}
