package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzaey;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public final class NativeAdViewHolder {
    private static WeakHashMap<View, NativeAdViewHolder> c = new WeakHashMap<>();
    private zzaey a;
    private WeakReference<View> b;

    /* JADX DEBUG: Multi-variable search result rejected for r0v6, resolved type: com.google.android.gms.internal.ads.zzwc */
    /* JADX WARN: Multi-variable type inference failed */
    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        HashMap hashMap;
        HashMap hashMap2;
        n.i(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            zzazk.zzev("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
        } else if (c.get(view) != null) {
            zzazk.zzev("The provided containerView is already in use with another NativeAdViewHolder.");
        } else {
            c.put(view, this);
            this.b = new WeakReference<>(view);
            if (map == null) {
                hashMap = new HashMap();
            } else {
                hashMap = new HashMap(map);
            }
            if (map2 == null) {
                hashMap2 = new HashMap();
            } else {
                hashMap2 = new HashMap(map2);
            }
            this.a = zzwr.zzqo().zza(view, hashMap, hashMap2);
        }
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.a.zzf(aw.Q(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        zv zvVar = (zv) nativeAd.zzjs();
        WeakReference<View> weakReference = this.b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzazk.zzex("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!c.containsKey(view)) {
            c.put(view, this);
        }
        zzaey zzaey = this.a;
        if (zzaey != null) {
            try {
                zzaey.zza(zvVar);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void unregisterNativeAd() {
        zzaey zzaey = this.a;
        if (zzaey != null) {
            try {
                zzaey.unregisterNativeAd();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            c.remove(view);
        }
    }
}
