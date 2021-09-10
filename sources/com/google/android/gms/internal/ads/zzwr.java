package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import java.util.Random;
import java.util.WeakHashMap;

public final class zzwr {
    private static zzwr zzcjk = new zzwr();
    private final zzaza zzcjl;
    private final zzwc zzcjm;
    private final String zzcjn;
    private final zzabg zzcjo;
    private final zzabi zzcjp;
    private final zzabl zzcjq;
    private final zzazn zzcjr;
    private final Random zzcjs;
    private final WeakHashMap<QueryInfo, String> zzcjt;

    protected zzwr() {
        this(new zzaza(), new zzwc(new zzvj(), new zzvk(), new zzzz(), new zzagv(), new zzauy(), new zzawc(), new zzarp(), new zzagu()), new zzabg(), new zzabi(), new zzabl(), zzaza.zzzy(), new zzazn(0, 204204000, true), new Random(), new WeakHashMap());
    }

    public static zzaza zzqn() {
        return zzcjk.zzcjl;
    }

    public static zzwc zzqo() {
        return zzcjk.zzcjm;
    }

    public static zzabi zzqp() {
        return zzcjk.zzcjp;
    }

    public static zzabg zzqq() {
        return zzcjk.zzcjo;
    }

    public static zzabl zzqr() {
        return zzcjk.zzcjq;
    }

    public static String zzqs() {
        return zzcjk.zzcjn;
    }

    public static zzazn zzqt() {
        return zzcjk.zzcjr;
    }

    public static Random zzqu() {
        return zzcjk.zzcjs;
    }

    public static WeakHashMap<QueryInfo, String> zzqv() {
        return zzcjk.zzcjt;
    }

    private zzwr(zzaza zzaza, zzwc zzwc, zzabg zzabg, zzabi zzabi, zzabl zzabl, String str, zzazn zzazn, Random random, WeakHashMap<QueryInfo, String> weakHashMap) {
        this.zzcjl = zzaza;
        this.zzcjm = zzwc;
        this.zzcjo = zzabg;
        this.zzcjp = zzabi;
        this.zzcjq = zzabl;
        this.zzcjn = str;
        this.zzcjr = zzazn;
        this.zzcjs = random;
        this.zzcjt = weakHashMap;
    }
}
