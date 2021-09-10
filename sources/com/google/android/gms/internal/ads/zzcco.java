package com.google.android.gms.internal.ads;

import java.util.ArrayList;

public final class zzcco {
    public static final zzcco zzgfe = new zzccq().zzaor();
    private final zzafs zzgex;
    private final zzafr zzgey;
    private final zzagg zzgez;
    private final zzagf zzgfa;
    private final zzakb zzgfb;
    private final e0<String, zzafy> zzgfc;
    private final e0<String, zzafx> zzgfd;

    private zzcco(zzccq zzccq) {
        this.zzgex = zzccq.zzgex;
        this.zzgey = zzccq.zzgey;
        this.zzgez = zzccq.zzgez;
        this.zzgfc = new e0<>(zzccq.zzgfc);
        this.zzgfd = new e0<>(zzccq.zzgfd);
        this.zzgfa = zzccq.zzgfa;
        this.zzgfb = zzccq.zzgfb;
    }

    public final zzafs zzaoj() {
        return this.zzgex;
    }

    public final zzafr zzaok() {
        return this.zzgey;
    }

    public final zzagg zzaol() {
        return this.zzgez;
    }

    public final zzagf zzaom() {
        return this.zzgfa;
    }

    public final zzakb zzaon() {
        return this.zzgfb;
    }

    public final ArrayList<String> zzaoo() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.zzgez != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzgex != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzgey != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.zzgfc.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzgfb != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> zzaop() {
        ArrayList<String> arrayList = new ArrayList<>(this.zzgfc.size());
        for (int i = 0; i < this.zzgfc.size(); i++) {
            arrayList.add(this.zzgfc.h(i));
        }
        return arrayList;
    }

    public final zzafy zzga(String str) {
        return this.zzgfc.getOrDefault(str, null);
    }

    public final zzafx zzgb(String str) {
        return this.zzgfd.getOrDefault(str, null);
    }
}
