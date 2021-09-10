package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class zzgb<MessageType extends zzgb<MessageType, BuilderType>, BuilderType extends zzga<MessageType, BuilderType>> implements zzix {
    protected int zzb = 0;

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: java.lang.Iterable<T> */
    /* JADX WARN: Multi-variable type inference failed */
    protected static <T> void zzbs(Iterable<T> iterable, List<? super T> list) {
        zzia.zza(iterable);
        if (iterable instanceof zzih) {
            List<?> zzh = ((zzih) iterable).zzh();
            zzih zzih = (zzih) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    int size2 = zzih.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = zzih.size();
                    while (true) {
                        size3--;
                        if (size3 >= size) {
                            zzih.remove(size3);
                        } else {
                            throw new NullPointerException(sb2);
                        }
                    }
                } else if (obj instanceof zzgs) {
                    zzih.zzf((zzgs) obj);
                } else {
                    zzih.add((String) obj);
                }
            }
        } else if (!(iterable instanceof zzje)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t == 0) {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 >= size4) {
                            list.remove(size6);
                        } else {
                            throw new NullPointerException(sb4);
                        }
                    }
                } else {
                    list.add(t);
                }
            }
        } else {
            list.addAll(iterable);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final zzgs zzbo() {
        try {
            int zzbw = zzbw();
            zzgs zzgs = zzgs.zzb;
            byte[] bArr = new byte[zzbw];
            zzgz zzt = zzgz.zzt(bArr);
            zzbv(zzt);
            zzt.zzC();
            return new zzgq(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(ic.n(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    public final byte[] zzbp() {
        try {
            byte[] bArr = new byte[zzbw()];
            zzgz zzt = zzgz.zzt(bArr);
            zzbv(zzt);
            zzt.zzC();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(ic.n(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
        }
    }

    /* access modifiers changed from: package-private */
    public int zzbq() {
        throw null;
    }

    /* access modifiers changed from: package-private */
    public void zzbr(int i) {
        throw null;
    }
}
