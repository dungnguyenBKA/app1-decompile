package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzjo;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

public final class zzkq implements zzka {
    private static final zzkb zzapk = new zzkp();
    private static final byte[] zzapl = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzapm = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID zzapn = new UUID(72057594037932032L, -9223371306706625679L);
    private long zzaip;
    private final zzkt zzapc;
    private final zzko zzapo;
    private final SparseArray<zzkr> zzapp;
    private final boolean zzapq;
    private final zzpn zzapr;
    private final zzpn zzaps;
    private final zzpn zzapt;
    private final zzpn zzapu;
    private final zzpn zzapv;
    private final zzpn zzapw;
    private final zzpn zzapx;
    private final zzpn zzapy;
    private final zzpn zzapz;
    private ByteBuffer zzaqa;
    private long zzaqb;
    private long zzaqc;
    private long zzaqd;
    private long zzaqe;
    private zzkr zzaqf;
    private boolean zzaqg;
    private int zzaqh;
    private long zzaqi;
    private boolean zzaqj;
    private long zzaqk;
    private long zzaql;
    private long zzaqm;
    private zzph zzaqn;
    private zzph zzaqo;
    private boolean zzaqp;
    private int zzaqq;
    private long zzaqr;
    private long zzaqs;
    private int zzaqt;
    private int zzaqu;
    private int[] zzaqv;
    private int zzaqw;
    private int zzaqx;
    private int zzaqy;
    private int zzaqz;
    private boolean zzara;
    private boolean zzarb;
    private boolean zzarc;
    private boolean zzard;
    private byte zzare;
    private int zzarf;
    private int zzarg;
    private int zzarh;
    private boolean zzari;
    private boolean zzarj;
    private zzkc zzark;

    public zzkq() {
        this(0);
    }

    static int zzal(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    static boolean zzam(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    private final void zzb(zzjz zzjz, int i) {
        if (this.zzapt.limit() < i) {
            if (this.zzapt.capacity() < i) {
                zzpn zzpn = this.zzapt;
                byte[] bArr = zzpn.data;
                zzpn.zzc(Arrays.copyOf(bArr, Math.max(bArr.length << 1, i)), this.zzapt.limit());
            }
            zzpn zzpn2 = this.zzapt;
            zzjz.readFully(zzpn2.data, zzpn2.limit(), i - this.zzapt.limit());
            this.zzapt.zzbh(i);
        }
    }

    private final long zzea(long j) {
        long j2 = this.zzaqd;
        if (j2 != -9223372036854775807L) {
            return zzpt.zza(j, j2, 1000);
        }
        throw new zzhw("Can't scale timecode prior to timecodeScale being set.");
    }

    private final void zzgu() {
        this.zzaqz = 0;
        this.zzarh = 0;
        this.zzarg = 0;
        this.zzara = false;
        this.zzarb = false;
        this.zzard = false;
        this.zzarf = 0;
        this.zzare = 0;
        this.zzarc = false;
        this.zzapw.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void release() {
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final boolean zza(zzjz zzjz) {
        return new zzku().zza(zzjz);
    }

    /* access modifiers changed from: package-private */
    public final void zzan(int i) {
        zzkf zzkf;
        zzph zzph;
        zzph zzph2;
        int i2;
        int i3 = 0;
        if (i != 160) {
            if (i == 174) {
                String str = this.zzaqf.zzarl;
                if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                    i3 = 1;
                }
                if (i3 != 0) {
                    zzkr zzkr = this.zzaqf;
                    zzkr.zza(this.zzark, zzkr.number);
                    SparseArray<zzkr> sparseArray = this.zzapp;
                    zzkr zzkr2 = this.zzaqf;
                    sparseArray.put(zzkr2.number, zzkr2);
                }
                this.zzaqf = null;
            } else if (i == 19899) {
                int i4 = this.zzaqh;
                if (i4 != -1) {
                    long j = this.zzaqi;
                    if (j != -1) {
                        if (i4 == 475249515) {
                            this.zzaqk = j;
                            return;
                        }
                        return;
                    }
                }
                throw new zzhw("Mandatory element SeekID or SeekPosition not found");
            } else if (i == 25152) {
                zzkr zzkr3 = this.zzaqf;
                if (!zzkr3.zzarn) {
                    return;
                }
                if (zzkr3.zzarp != null) {
                    zzkr3.zzahh = new zzjo(new zzjo.zza(zzhf.UUID_NIL, "video/webm", this.zzaqf.zzarp.zzapi));
                    return;
                }
                throw new zzhw("Encrypted Track found but ContentEncKeyID was not found");
            } else if (i == 28032) {
                zzkr zzkr4 = this.zzaqf;
                if (zzkr4.zzarn && zzkr4.zzaro != null) {
                    throw new zzhw("Combining encryption and compression is not supported");
                }
            } else if (i == 357149030) {
                if (this.zzaqd == -9223372036854775807L) {
                    this.zzaqd = 1000000;
                }
                long j2 = this.zzaqe;
                if (j2 != -9223372036854775807L) {
                    this.zzaip = zzea(j2);
                }
            } else if (i != 374648427) {
                if (i == 475249515 && !this.zzaqg) {
                    zzkc zzkc = this.zzark;
                    if (this.zzaqc == -1 || this.zzaip == -9223372036854775807L || (zzph = this.zzaqn) == null || zzph.size() == 0 || (zzph2 = this.zzaqo) == null || zzph2.size() != this.zzaqn.size()) {
                        this.zzaqn = null;
                        this.zzaqo = null;
                        zzkf = new zzki(this.zzaip);
                    } else {
                        int size = this.zzaqn.size();
                        int[] iArr = new int[size];
                        long[] jArr = new long[size];
                        long[] jArr2 = new long[size];
                        long[] jArr3 = new long[size];
                        for (int i5 = 0; i5 < size; i5++) {
                            jArr3[i5] = this.zzaqn.get(i5);
                            jArr[i5] = this.zzaqo.get(i5) + this.zzaqc;
                        }
                        while (true) {
                            i2 = size - 1;
                            if (i3 >= i2) {
                                break;
                            }
                            int i6 = i3 + 1;
                            iArr[i3] = (int) (jArr[i6] - jArr[i3]);
                            jArr2[i3] = jArr3[i6] - jArr3[i3];
                            i3 = i6;
                        }
                        iArr[i2] = (int) ((this.zzaqc + this.zzaqb) - jArr[i2]);
                        jArr2[i2] = this.zzaip - jArr3[i2];
                        this.zzaqn = null;
                        this.zzaqo = null;
                        zzkf = new zzjy(iArr, jArr, jArr2, jArr3);
                    }
                    zzkc.zza(zzkf);
                    this.zzaqg = true;
                }
            } else if (this.zzapp.size() != 0) {
                this.zzark.zzgs();
            } else {
                throw new zzhw("No valid tracks were found");
            }
        } else if (this.zzaqq == 2) {
            if (!this.zzarj) {
                this.zzaqy |= 1;
            }
            zza(this.zzapp.get(this.zzaqw), this.zzaqr);
            this.zzaqq = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzc(long j, long j2) {
        this.zzaqm = -9223372036854775807L;
        this.zzaqq = 0;
        this.zzapo.reset();
        this.zzapc.reset();
        zzgu();
    }

    /* access modifiers changed from: package-private */
    public final void zzd(int i, long j, long j2) {
        if (i == 160) {
            this.zzarj = false;
        } else if (i == 174) {
            this.zzaqf = new zzkr(null);
        } else if (i == 187) {
            this.zzaqp = false;
        } else if (i == 19899) {
            this.zzaqh = -1;
            this.zzaqi = -1;
        } else if (i == 20533) {
            this.zzaqf.zzarn = true;
        } else if (i == 21968) {
            this.zzaqf.zzaru = true;
        } else if (i == 408125543) {
            long j3 = this.zzaqc;
            if (j3 == -1 || j3 == j) {
                this.zzaqc = j;
                this.zzaqb = j2;
                return;
            }
            throw new zzhw("Multiple Segment elements not supported");
        } else if (i == 475249515) {
            this.zzaqn = new zzph();
            this.zzaqo = new zzph();
        } else if (i != 524531317 || this.zzaqg) {
        } else {
            if (!this.zzapq || this.zzaqk == -1) {
                this.zzark.zza(new zzki(this.zzaip));
                this.zzaqg = true;
                return;
            }
            this.zzaqj = true;
        }
    }

    private zzkq(int i) {
        this(new zzkj(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkc) {
        this.zzark = zzkc;
    }

    private zzkq(zzko zzko, int i) {
        this.zzaqc = -1;
        this.zzaqd = -9223372036854775807L;
        this.zzaqe = -9223372036854775807L;
        this.zzaip = -9223372036854775807L;
        this.zzaqk = -1;
        this.zzaql = -1;
        this.zzaqm = -9223372036854775807L;
        this.zzapo = zzko;
        zzko.zza(new zzks(this, null));
        this.zzapq = true;
        this.zzapc = new zzkt();
        this.zzapp = new SparseArray<>();
        this.zzapt = new zzpn(4);
        this.zzapu = new zzpn(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzapv = new zzpn(4);
        this.zzapr = new zzpn(zzpm.zzbjt);
        this.zzaps = new zzpn(4);
        this.zzapw = new zzpn();
        this.zzapx = new zzpn();
        this.zzapy = new zzpn(8);
        this.zzapz = new zzpn();
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0039 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0005 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzka
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zza(com.google.android.gms.internal.ads.zzjz r9, com.google.android.gms.internal.ads.zzkg r10) {
        /*
            r8 = this;
            r0 = 0
            r8.zzari = r0
            r1 = 1
            r2 = 1
        L_0x0005:
            if (r2 == 0) goto L_0x003a
            boolean r3 = r8.zzari
            if (r3 != 0) goto L_0x003a
            com.google.android.gms.internal.ads.zzko r2 = r8.zzapo
            boolean r2 = r2.zzb(r9)
            if (r2 == 0) goto L_0x0005
            long r3 = r9.getPosition()
            boolean r5 = r8.zzaqj
            if (r5 == 0) goto L_0x0025
            r8.zzaql = r3
            long r3 = r8.zzaqk
            r10.position = r3
            r8.zzaqj = r0
        L_0x0023:
            r3 = 1
            goto L_0x0037
        L_0x0025:
            boolean r3 = r8.zzaqg
            if (r3 == 0) goto L_0x0036
            long r3 = r8.zzaql
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0036
            r10.position = r3
            r8.zzaql = r5
            goto L_0x0023
        L_0x0036:
            r3 = 0
        L_0x0037:
            if (r3 == 0) goto L_0x0005
            return r1
        L_0x003a:
            if (r2 == 0) goto L_0x003d
            return r0
        L_0x003d:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkq.zza(com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzkg):int");
    }

    /* access modifiers changed from: package-private */
    public final void zza(int i, double d) {
        if (i == 181) {
            this.zzaqf.zzahp = (int) d;
        } else if (i != 17545) {
            switch (i) {
                case 21969:
                    this.zzaqf.zzasa = (float) d;
                    return;
                case 21970:
                    this.zzaqf.zzasb = (float) d;
                    return;
                case 21971:
                    this.zzaqf.zzasc = (float) d;
                    return;
                case 21972:
                    this.zzaqf.zzasd = (float) d;
                    return;
                case 21973:
                    this.zzaqf.zzase = (float) d;
                    return;
                case 21974:
                    this.zzaqf.zzasf = (float) d;
                    return;
                case 21975:
                    this.zzaqf.zzasg = (float) d;
                    return;
                case 21976:
                    this.zzaqf.zzash = (float) d;
                    return;
                case 21977:
                    this.zzaqf.zzasi = (float) d;
                    return;
                case 21978:
                    this.zzaqf.zzasj = (float) d;
                    return;
                default:
                    return;
            }
        } else {
            this.zzaqe = (long) d;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzd(int i, long j) {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                switch (i) {
                    case 131:
                        this.zzaqf.type = (int) j;
                        return;
                    case 136:
                        zzkr zzkr = this.zzaqf;
                        if (j == 1) {
                            z = true;
                        }
                        zzkr.zzasn = z;
                        return;
                    case 155:
                        this.zzaqs = zzea(j);
                        return;
                    case 159:
                        this.zzaqf.zzaho = (int) j;
                        return;
                    case 176:
                        this.zzaqf.width = (int) j;
                        return;
                    case 179:
                        this.zzaqn.add(zzea(j));
                        return;
                    case 186:
                        this.zzaqf.height = (int) j;
                        return;
                    case 215:
                        this.zzaqf.number = (int) j;
                        return;
                    case 231:
                        this.zzaqm = zzea(j);
                        return;
                    case 241:
                        if (!this.zzaqp) {
                            this.zzaqo.add(j);
                            this.zzaqp = true;
                            return;
                        }
                        return;
                    case 251:
                        this.zzarj = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw new zzhw(sb.toString());
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw new zzhw(sb2.toString());
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw new zzhw(sb3.toString());
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw new zzhw(sb4.toString());
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw new zzhw(sb5.toString());
                        }
                        return;
                    case 21420:
                        this.zzaqi = j + this.zzaqc;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            this.zzaqf.zzahl = 0;
                            return;
                        } else if (i2 == 1) {
                            this.zzaqf.zzahl = 2;
                            return;
                        } else if (i2 == 3) {
                            this.zzaqf.zzahl = 1;
                            return;
                        } else if (i2 == 15) {
                            this.zzaqf.zzahl = 3;
                            return;
                        } else {
                            return;
                        }
                    case 21680:
                        this.zzaqf.zzarr = (int) j;
                        return;
                    case 21682:
                        this.zzaqf.zzart = (int) j;
                        return;
                    case 21690:
                        this.zzaqf.zzars = (int) j;
                        return;
                    case 21930:
                        zzkr zzkr2 = this.zzaqf;
                        if (j == 1) {
                            z = true;
                        }
                        zzkr2.zzaso = z;
                        return;
                    case 22186:
                        this.zzaqf.zzasl = j;
                        return;
                    case 22203:
                        this.zzaqf.zzasm = j;
                        return;
                    case 25188:
                        this.zzaqf.zzask = (int) j;
                        return;
                    case 2352003:
                        this.zzaqf.zzarm = (int) j;
                        return;
                    case 2807729:
                        this.zzaqd = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i3 = (int) j;
                                if (i3 == 1) {
                                    this.zzaqf.zzarx = 2;
                                    return;
                                } else if (i3 == 2) {
                                    this.zzaqf.zzarx = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case 21946:
                                int i4 = (int) j;
                                if (i4 != 1) {
                                    if (i4 == 16) {
                                        this.zzaqf.zzarw = 6;
                                        return;
                                    } else if (i4 == 18) {
                                        this.zzaqf.zzarw = 7;
                                        return;
                                    } else if (!(i4 == 6 || i4 == 7)) {
                                        return;
                                    }
                                }
                                this.zzaqf.zzarw = 3;
                                return;
                            case 21947:
                                zzkr zzkr3 = this.zzaqf;
                                zzkr3.zzaru = true;
                                int i5 = (int) j;
                                if (i5 == 1) {
                                    zzkr3.zzarv = 1;
                                    return;
                                } else if (i5 == 9) {
                                    zzkr3.zzarv = 6;
                                    return;
                                } else if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                    zzkr3.zzarv = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                this.zzaqf.zzary = (int) j;
                                return;
                            case 21949:
                                this.zzaqf.zzarz = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j != 1) {
                StringBuilder sb6 = new StringBuilder(55);
                sb6.append("ContentEncodingScope ");
                sb6.append(j);
                sb6.append(" not supported");
                throw new zzhw(sb6.toString());
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw new zzhw(sb7.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(int i, String str) {
        if (i == 134) {
            this.zzaqf.zzarl = str;
        } else if (i != 17026) {
            if (i == 2274716) {
                zzkr.zza(this.zzaqf, str);
            }
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            throw new zzhw(ic.e(ic.m(str, 22), "DocType ", str, " not supported"));
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(int i, int i2, zzjz zzjz) {
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6 = 0;
        int i7 = 1;
        if (i == 161 || i == 163) {
            int i8 = 8;
            if (this.zzaqq == 0) {
                this.zzaqw = (int) this.zzapc.zza(zzjz, false, true, 8);
                this.zzaqx = this.zzapc.zzgw();
                this.zzaqs = -9223372036854775807L;
                this.zzaqq = 1;
                this.zzapt.reset();
            }
            zzkr zzkr = this.zzapp.get(this.zzaqw);
            if (zzkr == null) {
                zzjz.zzag(i2 - this.zzaqx);
                this.zzaqq = 0;
                return;
            }
            if (this.zzaqq == 1) {
                zzb(zzjz, 3);
                int i9 = (this.zzapt.data[2] & 6) >> 1;
                byte b = 255;
                if (i9 == 0) {
                    this.zzaqu = 1;
                    int[] zza = zza(this.zzaqv, 1);
                    this.zzaqv = zza;
                    zza[0] = (i2 - this.zzaqx) - 3;
                } else if (i == 163) {
                    int i10 = 4;
                    zzb(zzjz, 4);
                    int i11 = (this.zzapt.data[3] & 255) + 1;
                    this.zzaqu = i11;
                    int[] zza2 = zza(this.zzaqv, i11);
                    this.zzaqv = zza2;
                    if (i9 == 2) {
                        int i12 = this.zzaqu;
                        Arrays.fill(zza2, 0, i12, ((i2 - this.zzaqx) - 4) / i12);
                    } else if (i9 == 1) {
                        int i13 = 0;
                        int i14 = 0;
                        while (true) {
                            i4 = this.zzaqu;
                            if (i13 >= i4 - 1) {
                                break;
                            }
                            this.zzaqv[i13] = 0;
                            do {
                                i10++;
                                zzb(zzjz, i10);
                                i5 = this.zzapt.data[i10 - 1] & 255;
                                iArr = this.zzaqv;
                                iArr[i13] = iArr[i13] + i5;
                            } while (i5 == 255);
                            i14 += iArr[i13];
                            i13++;
                        }
                        this.zzaqv[i4 - 1] = ((i2 - this.zzaqx) - i10) - i14;
                    } else if (i9 == 3) {
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            int i17 = this.zzaqu;
                            if (i15 >= i17 - 1) {
                                this.zzaqv[i17 - 1] = ((i2 - this.zzaqx) - i10) - i16;
                                break;
                            }
                            this.zzaqv[i15] = i6;
                            i10++;
                            zzb(zzjz, i10);
                            int i18 = i10 - 1;
                            if (this.zzapt.data[i18] != 0) {
                                long j = 0;
                                int i19 = 0;
                                while (true) {
                                    if (i19 >= i8) {
                                        i3 = i15;
                                        break;
                                    }
                                    int i20 = i7 << (7 - i19);
                                    if ((this.zzapt.data[i18] & i20) != 0) {
                                        i10 += i19;
                                        zzb(zzjz, i10);
                                        i3 = i15;
                                        long j2 = (long) ((i20 ^ -1) & this.zzapt.data[i18] & b);
                                        j = j2;
                                        for (int i21 = i18 + 1; i21 < i10; i21++) {
                                            j = (j << 8) | ((long) (this.zzapt.data[i21] & b));
                                            b = 255;
                                        }
                                        if (i3 > 0) {
                                            j -= (1 << ((i19 * 7) + 6)) - 1;
                                        }
                                    } else {
                                        i19++;
                                        i7 = 1;
                                        b = 255;
                                        i8 = 8;
                                    }
                                }
                                if (j >= -2147483648L && j <= 2147483647L) {
                                    int i22 = (int) j;
                                    int[] iArr2 = this.zzaqv;
                                    if (i3 != 0) {
                                        i22 += iArr2[i3 - 1];
                                    }
                                    iArr2[i3] = i22;
                                    i16 += iArr2[i3];
                                    i15 = i3 + 1;
                                    i6 = 0;
                                    i7 = 1;
                                    b = 255;
                                    i8 = 8;
                                }
                            } else {
                                throw new zzhw("No valid varint length mask found");
                            }
                        }
                        throw new zzhw("EBML lacing sample size out of range.");
                    } else {
                        throw new zzhw(ic.C(36, "Unexpected lacing value: ", i9));
                    }
                } else {
                    throw new zzhw("Lacing only supported in SimpleBlocks.");
                }
                byte[] bArr = this.zzapt.data;
                this.zzaqr = this.zzaqm + zzea((long) ((bArr[1] & 255) | (bArr[0] << 8)));
                byte[] bArr2 = this.zzapt.data;
                this.zzaqy = ((zzkr.type == 2 || (i == 163 && (bArr2[2] & 128) == 128)) ? 1 : 0) | ((bArr2[2] & 8) == 8 ? RecyclerView.UNDEFINED_DURATION : 0);
                this.zzaqq = 2;
                this.zzaqt = 0;
            }
            if (i == 163) {
                while (true) {
                    int i23 = this.zzaqt;
                    if (i23 < this.zzaqu) {
                        zza(zzjz, zzkr, this.zzaqv[i23]);
                        zza(zzkr, this.zzaqr + ((long) ((this.zzaqt * zzkr.zzarm) / AdError.NETWORK_ERROR_CODE)));
                        this.zzaqt++;
                    } else {
                        this.zzaqq = 0;
                        return;
                    }
                }
            } else {
                zza(zzjz, zzkr, this.zzaqv[0]);
            }
        } else if (i == 16981) {
            byte[] bArr3 = new byte[i2];
            this.zzaqf.zzaro = bArr3;
            zzjz.readFully(bArr3, 0, i2);
        } else if (i == 18402) {
            byte[] bArr4 = new byte[i2];
            zzjz.readFully(bArr4, 0, i2);
            this.zzaqf.zzarp = new zzkk(1, bArr4);
        } else if (i == 21419) {
            Arrays.fill(this.zzapv.data, (byte) 0);
            zzjz.readFully(this.zzapv.data, 4 - i2, i2);
            this.zzapv.zzbi(0);
            this.zzaqh = (int) this.zzapv.zzix();
        } else if (i == 25506) {
            byte[] bArr5 = new byte[i2];
            this.zzaqf.zzarq = bArr5;
            zzjz.readFully(bArr5, 0, i2);
        } else if (i == 30322) {
            byte[] bArr6 = new byte[i2];
            this.zzaqf.zzahm = bArr6;
            zzjz.readFully(bArr6, 0, i2);
        } else {
            throw new zzhw(ic.C(26, "Unexpected id: ", i));
        }
    }

    private final void zza(zzkr zzkr, long j) {
        byte[] bArr;
        if ("S_TEXT/UTF8".equals(zzkr.zzarl)) {
            byte[] bArr2 = this.zzapx.data;
            long j2 = this.zzaqs;
            if (j2 == -9223372036854775807L) {
                bArr = zzapm;
            } else {
                int i = (int) (j2 / 3600000000L);
                long j3 = j2 - (((long) i) * 3600000000L);
                int i2 = (int) (j3 / 60000000);
                long j4 = j3 - ((long) (60000000 * i2));
                int i3 = (int) (j4 / 1000000);
                int i4 = (int) ((j4 - ((long) (1000000 * i3))) / 1000);
                bArr = zzpt.zzbg(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            zzkh zzkh = zzkr.zzasp;
            zzpn zzpn = this.zzapx;
            zzkh.zza(zzpn, zzpn.limit());
            this.zzarh = this.zzapx.limit() + this.zzarh;
        }
        zzkr.zzasp.zza(j, this.zzaqy, this.zzarh, 0, zzkr.zzarp);
        this.zzari = true;
        zzgu();
    }

    private final void zza(zzjz zzjz, zzkr zzkr, int i) {
        int i2;
        if ("S_TEXT/UTF8".equals(zzkr.zzarl)) {
            byte[] bArr = zzapl;
            int length = bArr.length + i;
            if (this.zzapx.capacity() < length) {
                this.zzapx.data = Arrays.copyOf(bArr, length + i);
            }
            zzjz.readFully(this.zzapx.data, bArr.length, i);
            this.zzapx.zzbi(0);
            this.zzapx.zzbh(length);
            return;
        }
        zzkh zzkh = zzkr.zzasp;
        if (!this.zzara) {
            if (zzkr.zzarn) {
                this.zzaqy &= -1073741825;
                int i3 = 128;
                if (!this.zzarb) {
                    zzjz.readFully(this.zzapt.data, 0, 1);
                    this.zzaqz++;
                    byte[] bArr2 = this.zzapt.data;
                    if ((bArr2[0] & 128) != 128) {
                        this.zzare = bArr2[0];
                        this.zzarb = true;
                    } else {
                        throw new zzhw("Extension bit is set in signal byte");
                    }
                }
                byte b = this.zzare;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.zzaqy |= 1073741824;
                    if (!this.zzarc) {
                        zzjz.readFully(this.zzapy.data, 0, 8);
                        this.zzaqz += 8;
                        this.zzarc = true;
                        zzpn zzpn = this.zzapt;
                        byte[] bArr3 = zzpn.data;
                        if (!z) {
                            i3 = 0;
                        }
                        bArr3[0] = (byte) (i3 | 8);
                        zzpn.zzbi(0);
                        zzkh.zza(this.zzapt, 1);
                        this.zzarh++;
                        this.zzapy.zzbi(0);
                        zzkh.zza(this.zzapy, 8);
                        this.zzarh += 8;
                    }
                    if (z) {
                        if (!this.zzard) {
                            zzjz.readFully(this.zzapt.data, 0, 1);
                            this.zzaqz++;
                            this.zzapt.zzbi(0);
                            this.zzarf = this.zzapt.readUnsignedByte();
                            this.zzard = true;
                        }
                        int i4 = this.zzarf << 2;
                        this.zzapt.reset(i4);
                        zzjz.readFully(this.zzapt.data, 0, i4);
                        this.zzaqz += i4;
                        short s = (short) ((this.zzarf / 2) + 1);
                        int i5 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.zzaqa;
                        if (byteBuffer == null || byteBuffer.capacity() < i5) {
                            this.zzaqa = ByteBuffer.allocate(i5);
                        }
                        this.zzaqa.position(0);
                        this.zzaqa.putShort(s);
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            i2 = this.zzarf;
                            if (i6 >= i2) {
                                break;
                            }
                            int zzja = this.zzapt.zzja();
                            if (i6 % 2 == 0) {
                                this.zzaqa.putShort((short) (zzja - i7));
                            } else {
                                this.zzaqa.putInt(zzja - i7);
                            }
                            i6++;
                            i7 = zzja;
                        }
                        int i8 = (i - this.zzaqz) - i7;
                        if (i2 % 2 == 1) {
                            this.zzaqa.putInt(i8);
                        } else {
                            this.zzaqa.putShort((short) i8);
                            this.zzaqa.putInt(0);
                        }
                        this.zzapz.zzc(this.zzaqa.array(), i5);
                        zzkh.zza(this.zzapz, i5);
                        this.zzarh += i5;
                    }
                }
            } else {
                byte[] bArr4 = zzkr.zzaro;
                if (bArr4 != null) {
                    this.zzapw.zzc(bArr4, bArr4.length);
                }
            }
            this.zzara = true;
        }
        int limit = this.zzapw.limit() + i;
        if (!"V_MPEG4/ISO/AVC".equals(zzkr.zzarl) && !"V_MPEGH/ISO/HEVC".equals(zzkr.zzarl)) {
            while (true) {
                int i9 = this.zzaqz;
                if (i9 >= limit) {
                    break;
                }
                zza(zzjz, zzkh, limit - i9);
            }
        } else {
            byte[] bArr5 = this.zzaps.data;
            bArr5[0] = 0;
            bArr5[1] = 0;
            bArr5[2] = 0;
            int i10 = zzkr.zzasq;
            int i11 = 4 - i10;
            while (this.zzaqz < limit) {
                int i12 = this.zzarg;
                if (i12 == 0) {
                    int min = Math.min(i10, this.zzapw.zziv());
                    zzjz.readFully(bArr5, i11 + min, i10 - min);
                    if (min > 0) {
                        this.zzapw.zze(bArr5, i11, min);
                    }
                    this.zzaqz += i10;
                    this.zzaps.zzbi(0);
                    this.zzarg = this.zzaps.zzja();
                    this.zzapr.zzbi(0);
                    zzkh.zza(this.zzapr, 4);
                    this.zzarh += 4;
                } else {
                    this.zzarg = i12 - zza(zzjz, zzkh, i12);
                }
            }
        }
        if ("A_VORBIS".equals(zzkr.zzarl)) {
            this.zzapu.zzbi(0);
            zzkh.zza(this.zzapu, 4);
            this.zzarh += 4;
        }
    }

    private final int zza(zzjz zzjz, zzkh zzkh, int i) {
        int i2;
        int zziv = this.zzapw.zziv();
        if (zziv > 0) {
            i2 = Math.min(i, zziv);
            zzkh.zza(this.zzapw, i2);
        } else {
            i2 = zzkh.zza(zzjz, i, false);
        }
        this.zzaqz += i2;
        this.zzarh += i2;
        return i2;
    }

    private static int[] zza(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        if (iArr.length >= i) {
            return iArr;
        }
        return new int[Math.max(iArr.length << 1, i)];
    }
}
