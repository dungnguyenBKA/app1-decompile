package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;

public final class zzlh implements zzka {
    private static final zzkb zzapk = new zzlk();
    private static final int zzaxj = zzpt.zzbh("seig");
    private static final byte[] zzaxk = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private final int flags;
    private long zzaip;
    private final zzpn zzapr;
    private int zzarg;
    private int zzarh;
    private zzkc zzark;
    private final zzls zzaxl;
    private final SparseArray<zzlm> zzaxm;
    private final zzpn zzaxn;
    private final zzpn zzaxo;
    private final zzpn zzaxp;
    private final zzpr zzaxq;
    private final zzpn zzaxr;
    private final byte[] zzaxs;
    private final Stack<zzkv> zzaxt;
    private final LinkedList<zzlj> zzaxu;
    private int zzaxv;
    private int zzaxw;
    private long zzaxx;
    private int zzaxy;
    private zzpn zzaxz;
    private long zzaya;
    private int zzayb;
    private long zzayc;
    private zzlm zzayd;
    private int zzaye;
    private boolean zzayf;
    private zzkh zzayg;
    private zzkh[] zzayh;
    private boolean zzayi;

    public zzlh() {
        this(0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00a9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.google.android.gms.internal.ads.zzjo zzb(java.util.List<com.google.android.gms.internal.ads.zzky> r14) {
        /*
        // Method dump skipped, instructions count: 192
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlh.zzb(java.util.List):com.google.android.gms.internal.ads.zzjo");
    }

    /* JADX WARNING: Removed duplicated region for block: B:158:0x03d8  */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x03de  */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x03e6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzeb(long r49) {
        /*
        // Method dump skipped, instructions count: 1718
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlh.zzeb(long):void");
    }

    private final void zzhb() {
        this.zzaxv = 0;
        this.zzaxy = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void release() {
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final boolean zza(zzjz zzjz) {
        return zzlp.zzd(zzjz);
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzc(long j, long j2) {
        int size = this.zzaxm.size();
        for (int i = 0; i < size; i++) {
            this.zzaxm.valueAt(i).reset();
        }
        this.zzaxu.clear();
        this.zzayb = 0;
        this.zzaxt.clear();
        zzhb();
    }

    private zzlh(int i) {
        this(0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkc) {
        this.zzark = zzkc;
    }

    private zzlh(int i, zzpr zzpr) {
        this(0, null, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:251:0x025e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:258:0x059d A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:259:0x0004 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:263:0x0004 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzka
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zza(com.google.android.gms.internal.ads.zzjz r26, com.google.android.gms.internal.ads.zzkg r27) {
        /*
        // Method dump skipped, instructions count: 1457
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlh.zza(com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzkg):int");
    }

    private zzlh(int i, zzpr zzpr, zzls zzls) {
        this.flags = 0;
        this.zzaxq = null;
        this.zzaxl = null;
        this.zzaxr = new zzpn(16);
        this.zzapr = new zzpn(zzpm.zzbjt);
        this.zzaxn = new zzpn(5);
        this.zzaxo = new zzpn();
        this.zzaxp = new zzpn(1);
        this.zzaxs = new byte[16];
        this.zzaxt = new Stack<>();
        this.zzaxu = new LinkedList<>();
        this.zzaxm = new SparseArray<>();
        this.zzaip = -9223372036854775807L;
        this.zzayc = -9223372036854775807L;
        zzhb();
    }

    private static void zza(zzpn zzpn, int i, zzlu zzlu) {
        zzpn.zzbi(i + 8);
        int zzas = zzkw.zzas(zzpn.readInt());
        if ((zzas & 1) == 0) {
            boolean z = (zzas & 2) != 0;
            int zzja = zzpn.zzja();
            if (zzja == zzlu.zzaxc) {
                Arrays.fill(zzlu.zzbba, 0, zzja, z);
                zzlu.zzau(zzpn.zziv());
                zzpn.zze(zzlu.zzbbd.data, 0, zzlu.zzbbc);
                zzlu.zzbbd.zzbi(0);
                zzlu.zzbbe = false;
                return;
            }
            throw new zzhw(ic.c(41, "Length mismatch: ", zzja, ", ", zzlu.zzaxc));
        }
        throw new zzhw("Overriding TrackEncryptionBox parameters is unsupported.");
    }
}
