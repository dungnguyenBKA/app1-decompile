package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import java.util.List;

public interface zzaff extends IInterface {
    void destroy();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    String getPrice();

    double getStarRating();

    String getStore();

    zzzc getVideoController();

    void performClick(Bundle bundle);

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    zv zztm();

    zzaer zztn();

    zzaej zzto();

    zv zztp();
}
