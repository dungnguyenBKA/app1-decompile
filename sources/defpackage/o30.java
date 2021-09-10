package defpackage;

import com.vungle.warren.model.ReportDBAdapter;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
/* renamed from: o30  reason: default package */
public class o30 implements n30 {
    o30() {
    }

    @Override // defpackage.n30
    public t30 a(d10 d10, JSONObject jSONObject) {
        String str;
        long j;
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("fabric");
        JSONObject jSONObject3 = jSONObject.getJSONObject("app");
        String string = jSONObject3.getString(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS);
        boolean equals = "new".equals(string);
        String string2 = jSONObject2.getString("bundle_id");
        String string3 = jSONObject2.getString("org_id");
        if (equals) {
            str = "https://update.crashlytics.com/spi/v1/platforms/android/apps";
        } else {
            str = String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2);
        }
        Locale locale = Locale.US;
        p30 p30 = new p30(string, str, String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, string3, jSONObject3.optBoolean("update_required", false), jSONObject3.optInt("report_upload_variant", 0), jSONObject3.optInt("native_report_upload_variant", 0));
        r30 r30 = new r30(8, 4);
        q30 q30 = new q30(jSONObject.getJSONObject("features").optBoolean("collect_reports", true));
        long j2 = (long) optInt2;
        if (jSONObject.has("expires_at")) {
            j = jSONObject.optLong("expires_at");
        } else {
            Objects.requireNonNull(d10);
            j = (j2 * 1000) + System.currentTimeMillis();
        }
        return new t30(j, p30, r30, q30, optInt, optInt2);
    }
}
