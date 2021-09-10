package com.google.android.gms.internal.gtm;

import com.google.android.gms.internal.gtm.zzsg;
import com.google.android.gms.internal.gtm.zzsh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public abstract class zzsh<MessageType extends zzsh<MessageType, BuilderType>, BuilderType extends zzsg<MessageType, BuilderType>> implements zzwk {
    protected int zzb = 0;

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Iterable<T> */
    /* JADX WARN: Multi-variable type inference failed */
    protected static <T> void zzS(Iterable<T> iterable, List<? super T> list) {
        zzvi.zze(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(iterable.size() + list.size());
        }
        int size = list.size();
        for (T t : iterable) {
            if (t == 0) {
                int size2 = list.size();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Element at index ");
                sb.append(size2 - size);
                sb.append(" is null.");
                String sb2 = sb.toString();
                int size3 = list.size();
                while (true) {
                    size3--;
                    if (size3 >= size) {
                        list.remove(size3);
                    } else {
                        throw new NullPointerException(sb2);
                    }
                }
            } else {
                list.add(t);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public int zzQ() {
        throw null;
    }

    @Override // com.google.android.gms.internal.gtm.zzwk
    public final zztd zzR() {
        try {
            int zzX = zzX();
            zztd zztd = zztd.zzb;
            byte[] bArr = new byte[zzX];
            zzto zzF = zzto.zzF(bArr);
            zzaq(zzF);
            zzF.zzG();
            return new zzta(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(ic.n(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    /* access modifiers changed from: package-private */
    public void zzT(int i) {
        throw null;
    }
}
