package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;

public final class zzaqs extends NativeAd.AdChoicesInfo {
    private String text;
    private final List<NativeAd.Image> zzdfk = new ArrayList();

    public zzaqs(zzaej zzaej) {
        try {
            this.text = zzaej.getText();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            this.text = "";
        }
        try {
            for (zzaer zzaer : zzaej.zztd()) {
                zzaer zzo = zzaer instanceof IBinder ? zzaeq.zzo((IBinder) zzaer) : null;
                if (zzo != null) {
                    this.zzdfk.add(new zzaqu(zzo));
                }
            }
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzdfk;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.text;
    }
}
