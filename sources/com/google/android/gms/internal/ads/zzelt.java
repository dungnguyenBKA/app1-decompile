package com.google.android.gms.internal.ads;

public class zzelt {
    private static final zzeko zziln = zzeko.zzbhw();
    private zzejr zzirv;
    private volatile zzemo zzirw;
    private volatile zzejr zzirx;

    private final zzemo zzm(zzemo zzemo) {
        if (this.zzirw == null) {
            synchronized (this) {
                if (this.zzirw == null) {
                    try {
                        this.zzirw = zzemo;
                        this.zzirx = zzejr.zzilz;
                    } catch (zzelo unused) {
                        this.zzirw = zzemo;
                        this.zzirx = zzejr.zzilz;
                    }
                }
            }
        }
        return this.zzirw;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzelt)) {
            return false;
        }
        zzelt zzelt = (zzelt) obj;
        zzemo zzemo = this.zzirw;
        zzemo zzemo2 = zzelt.zzirw;
        if (zzemo == null && zzemo2 == null) {
            return zzbfz().equals(zzelt.zzbfz());
        }
        if (zzemo != null && zzemo2 != null) {
            return zzemo.equals(zzemo2);
        }
        if (zzemo != null) {
            return zzemo.equals(zzelt.zzm(zzemo.zzbiq()));
        }
        return zzm(zzemo2.zzbiq()).equals(zzemo2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzejr zzbfz() {
        if (this.zzirx != null) {
            return this.zzirx;
        }
        synchronized (this) {
            if (this.zzirx != null) {
                return this.zzirx;
            }
            if (this.zzirw == null) {
                this.zzirx = zzejr.zzilz;
            } else {
                this.zzirx = this.zzirw.zzbfz();
            }
            return this.zzirx;
        }
    }

    public final int zzbik() {
        if (this.zzirx != null) {
            return this.zzirx.size();
        }
        if (this.zzirw != null) {
            return this.zzirw.zzbik();
        }
        return 0;
    }

    public final zzemo zzn(zzemo zzemo) {
        zzemo zzemo2 = this.zzirw;
        this.zzirv = null;
        this.zzirx = null;
        this.zzirw = zzemo;
        return zzemo2;
    }
}
