package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class zzepl implements zzbr, Closeable, Iterator<zzbs> {
    private static zzept zzdc = zzept.zzn(zzepl.class);
    private static final zzbs zzjbf = new zzepo("eof ");
    long zzasu = 0;
    long zzbga = 0;
    protected zzepn zzjbd;
    protected zzbn zzjbg;
    private zzbs zzjbh = null;
    long zzjbi = 0;
    private List<zzbs> zzjbj = new ArrayList();

    /* access modifiers changed from: private */
    /* renamed from: zzbml */
    public final zzbs next() {
        zzbs zza;
        zzbs zzbs = this.zzjbh;
        if (zzbs == null || zzbs == zzjbf) {
            zzepn zzepn = this.zzjbd;
            if (zzepn == null || this.zzjbi >= this.zzasu) {
                this.zzjbh = zzjbf;
                throw new NoSuchElementException();
            }
            try {
                synchronized (zzepn) {
                    this.zzjbd.zzfc(this.zzjbi);
                    zza = this.zzjbg.zza(this.zzjbd, this);
                    this.zzjbi = this.zzjbd.position();
                }
                return zza;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        } else {
            this.zzjbh = null;
            return zzbs;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.zzjbd.close();
    }

    public boolean hasNext() {
        zzbs zzbs = this.zzjbh;
        if (zzbs == zzjbf) {
            return false;
        }
        if (zzbs != null) {
            return true;
        }
        try {
            this.zzjbh = (zzbs) next();
            return true;
        } catch (NoSuchElementException unused) {
            this.zzjbh = zzjbf;
            return false;
        }
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.zzjbj.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.zzjbj.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    public void zza(zzepn zzepn, long j, zzbn zzbn) {
        this.zzjbd = zzepn;
        long position = zzepn.position();
        this.zzbga = position;
        this.zzjbi = position;
        zzepn.zzfc(zzepn.position() + j);
        this.zzasu = zzepn.position();
        this.zzjbg = zzbn;
    }

    public final List<zzbs> zzbmk() {
        if (this.zzjbd == null || this.zzjbh == zzjbf) {
            return this.zzjbj;
        }
        return new zzepr(this.zzjbj, this);
    }
}
