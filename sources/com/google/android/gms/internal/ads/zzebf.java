package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegl;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.http.protocol.HTTP;

public final class zzebf<P> {
    private static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    private final Class<P> zzibi;
    private ConcurrentMap<String, List<zzebi<P>>> zzibp = new ConcurrentHashMap();
    private zzebi<P> zzibq;

    private zzebf(Class<P> cls) {
        this.zzibi = cls;
    }

    public static <P> zzebf<P> zza(Class<P> cls) {
        return new zzebf<>(cls);
    }

    public final Class<P> zzbai() {
        return this.zzibi;
    }

    public final zzebi<P> zzbar() {
        return this.zzibq;
    }

    public final void zza(zzebi<P> zzebi) {
        if (zzebi == null) {
            throw new IllegalArgumentException("the primary entry must be non-null");
        } else if (zzebi.zzbau() == zzege.ENABLED) {
            List<zzebi<P>> list = this.zzibp.get(new String(zzebi.zzbaw(), UTF_8));
            if (list == null) {
                list = Collections.emptyList();
            }
            if (!list.isEmpty()) {
                this.zzibq = zzebi;
                return;
            }
            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
        } else {
            throw new IllegalArgumentException("the primary entry has to be ENABLED");
        }
    }

    public final zzebi<P> zza(P p, zzegl.zzb zzb) {
        byte[] bArr;
        if (zzb.zzbau() == zzege.ENABLED) {
            int i = zzear.zzibf[zzb.zzbav().ordinal()];
            if (i == 1 || i == 2) {
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(zzb.zzbeq()).array();
            } else if (i == 3) {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(zzb.zzbeq()).array();
            } else if (i == 4) {
                bArr = zzeas.zzibg;
            } else {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            zzebi<P> zzebi = new zzebi<>(p, bArr, zzb.zzbau(), zzb.zzbav(), zzb.zzbeq());
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzebi);
            String str = new String(zzebi.zzbaw(), UTF_8);
            List<zzebi<P>> put = this.zzibp.put(str, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(zzebi);
                this.zzibp.put(str, Collections.unmodifiableList(arrayList2));
            }
            return zzebi;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }
}
