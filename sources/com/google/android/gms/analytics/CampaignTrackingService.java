package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

@Deprecated
public class CampaignTrackingService extends Service {
    @RecentlyNullable
    public IBinder onBind(@RecentlyNonNull Intent intent) {
        return null;
    }
}
