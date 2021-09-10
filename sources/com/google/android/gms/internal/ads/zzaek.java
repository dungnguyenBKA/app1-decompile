package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;

public final class zzaek extends NativeAd.AdChoicesInfo {
    private String text;
    private final List<NativeAd.Image> zzdfk = new ArrayList();
    private final zzaej zzdfv;

    public zzaek(zzaej zzaej) {
        zzaer zzaer;
        IBinder iBinder;
        this.zzdfv = zzaej;
        try {
            this.text = zzaej.getText();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            this.text = "";
        }
        try {
            for (zzaer zzaer2 : zzaej.zztd()) {
                if (!(zzaer2 instanceof IBinder) || (iBinder = (IBinder) zzaer2) == null) {
                    zzaer = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzaer = queryLocalInterface instanceof zzaer ? (zzaer) queryLocalInterface : new zzaet(iBinder);
                }
                if (zzaer != null) {
                    this.zzdfk.add(new zzaes(zzaer));
                }
            }
        } catch (RemoteException e2) {
            zzazk.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzdfk;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.text;
    }
}
