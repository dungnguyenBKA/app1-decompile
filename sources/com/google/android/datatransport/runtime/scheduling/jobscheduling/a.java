package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;

public class a implements s {
    private final Context a;
    private final eu b;
    private AlarmManager c;
    private final g d;
    private final mv e;

    public a(Context context, eu euVar, mv mvVar, g gVar) {
        this.a = context;
        this.b = euVar;
        this.c = (AlarmManager) context.getSystemService("alarm");
        this.e = mvVar;
        this.d = gVar;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public void a(it itVar, int i) {
        b(itVar, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public void b(it itVar, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", itVar.b());
        builder.appendQueryParameter("priority", String.valueOf(rv.a(itVar.d())));
        if (itVar.c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(itVar.c(), 0));
        }
        Intent intent = new Intent(this.a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z) {
            if (PendingIntent.getBroadcast(this.a, 0, intent, 536870912) != null) {
                st.a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", itVar);
                return;
            }
        }
        long X = this.b.X(itVar);
        long b2 = this.d.b(itVar.d(), X, i);
        st.b("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", itVar, Long.valueOf(b2), Long.valueOf(X), Integer.valueOf(i));
        this.c.set(3, this.e.a() + b2, PendingIntent.getBroadcast(this.a, 0, intent, 0));
    }
}
