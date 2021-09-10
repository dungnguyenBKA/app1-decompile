package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import java.util.List;

public interface zzafj extends IInterface {
    void destroy();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    zzzc getVideoController();

    void performClick(Bundle bundle);

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    zv zztm();

    zzaej zzto();

    zv zztp();

    zzaer zztq();
}
