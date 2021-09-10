package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import java.util.List;

public interface zzagr extends IInterface {
    void cancelUnconfirmedClick();

    void destroy();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    List getMuteThisAdReasons();

    String getPrice();

    double getStarRating();

    String getStore();

    zzzc getVideoController();

    boolean isCustomClickGestureEnabled();

    boolean isCustomMuteThisAdEnabled();

    void performClick(Bundle bundle);

    void recordCustomClickGesture();

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    void zza(zzagm zzagm);

    void zza(zzyj zzyj);

    void zza(zzyn zzyn);

    void zza(zzyw zzyw);

    zzyx zzki();

    zv zztm();

    zzaer zztn();

    zzaej zzto();

    zv zztp();

    void zztx();

    zzaem zzty();
}
