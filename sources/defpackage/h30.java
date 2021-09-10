package defpackage;

import com.vungle.warren.model.ReportDBAdapter;
import java.util.Objects;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
/* renamed from: h30  reason: default package */
public class h30 implements n30 {
    h30() {
    }

    static s30 b(d10 d10) {
        JSONObject jSONObject = new JSONObject();
        return new t30(c(d10, 3600, jSONObject), null, new r30(jSONObject.optInt("max_custom_exception_events", 8), 4), new q30(jSONObject.optBoolean("collect_reports", true)), 0, 3600);
    }

    private static long c(d10 d10, long j, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        Objects.requireNonNull(d10);
        return (j * 1000) + System.currentTimeMillis();
    }

    @Override // defpackage.n30
    public t30 a(d10 d10, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("app");
        return new t30(c(d10, (long) optInt2, jSONObject), new p30(jSONObject2.getString(ReportDBAdapter.ReportColumns.COLUMN_REPORT_STATUS), jSONObject2.getString(ReportDBAdapter.ReportColumns.COLUMN_URL), jSONObject2.getString("reports_url"), jSONObject2.getString("ndk_reports_url"), jSONObject2.optBoolean("update_required", false)), new r30(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8), 4), new q30(jSONObject.getJSONObject("features").optBoolean("collect_reports", true)), optInt, optInt2);
    }
}
