package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.util.Map;
import org.apache.http.HttpHeaders;

public final class zzaqf extends zzaqq {
    private final Context context;
    private final Map<String, String> zzdbf;
    private String zzdpd = zzdq("description");
    private long zzdpe = zzdr("start_ticks");
    private long zzdpf = zzdr("end_ticks");
    private String zzdpg = zzdq("summary");
    private String zzdph = zzdq("location");

    public zzaqf(zzbeb zzbeb, Map<String, String> map) {
        super(zzbeb, "createCalendarEvent");
        this.zzdbf = map;
        this.context = zzbeb.zzabe();
    }

    private final String zzdq(String str) {
        return TextUtils.isEmpty(this.zzdbf.get(str)) ? "" : this.zzdbf.get(str);
    }

    private final long zzdr(String str) {
        String str2 = this.zzdbf.get(str);
        if (str2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* access modifiers changed from: package-private */
    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    public final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzdpd);
        data.putExtra("eventLocation", this.zzdph);
        data.putExtra("description", this.zzdpg);
        long j = this.zzdpe;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.zzdpf;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void execute() {
        if (this.context == null) {
            zzds("Activity context is not available.");
            return;
        }
        zzr.zzkr();
        if (!zzj.zzao(this.context).zzsa()) {
            zzds("This feature is not available on the device.");
            return;
        }
        zzr.zzkr();
        AlertDialog.Builder zzan = zzj.zzan(this.context);
        Resources resources = zzr.zzkv().getResources();
        zzan.setTitle(resources != null ? resources.getString(R.string.s5) : "Create calendar event");
        zzan.setMessage(resources != null ? resources.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        zzan.setPositiveButton(resources != null ? resources.getString(R.string.s3) : HttpHeaders.ACCEPT, new zzaqe(this));
        zzan.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzaqh(this));
        zzan.create().show();
    }
}
