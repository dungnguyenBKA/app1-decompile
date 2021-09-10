package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import defpackage.it;

public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    public static final /* synthetic */ int a = 0;

    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        mt.c(context);
        it.a a2 = it.a();
        a2.b(queryParameter);
        a2.d(rv.b(intValue));
        if (queryParameter2 != null) {
            a2.c(Base64.decode(queryParameter2, 0));
        }
        mt.a().b().f(a2.a(), i, b.a());
    }
}
