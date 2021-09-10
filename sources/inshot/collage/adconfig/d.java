package inshot.collage.adconfig;

import android.content.Context;
import android.content.SharedPreferences;

public final class d {
    public static final boolean a(Context context, String str) {
        gg0.e(context, "context");
        gg0.e(str, "adType");
        SharedPreferences d = d(context);
        return d.getBoolean("EnableAdType" + str, true);
    }

    public static final int b(Context context) {
        gg0.e(context, "context");
        return d(context).getInt("BannerHeight", -1);
    }

    public static final long c(Context context, j jVar) {
        gg0.e(context, "context");
        gg0.e(jVar, "type");
        SharedPreferences d = d(context);
        StringBuilder q = ic.q("FullLastShowTime_");
        q.append(jVar.name());
        return d.getLong(q.toString(), 0);
    }

    private static final SharedPreferences d(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("collage_ad", 0);
        gg0.d(sharedPreferences, "context.getSharedPrefere…d\", Context.MODE_PRIVATE)");
        return sharedPreferences;
    }

    public static final int e(Context context, j jVar) {
        gg0.e(context, "context");
        gg0.e(jVar, "type");
        SharedPreferences d = d(context);
        StringBuilder q = ic.q("SaveTimesSinceLastInterstitial-");
        q.append(jVar.name());
        return d.getInt(q.toString(), 0);
    }

    public static final void f(Context context, int i) {
        gg0.e(context, "context");
        d(context).edit().putInt("BannerHeight", i).apply();
    }

    public static final void g(Context context, String str, boolean z) {
        gg0.e(context, "context");
        gg0.e(str, "adType");
        SharedPreferences.Editor edit = d(context).edit();
        edit.putBoolean("EnableAdType" + str, z).apply();
    }

    public static final void h(Context context, j jVar, long j) {
        gg0.e(context, "context");
        gg0.e(jVar, "type");
        SharedPreferences.Editor edit = d(context).edit();
        StringBuilder q = ic.q("FullLastShowTime_");
        q.append(jVar.name());
        edit.putLong(q.toString(), j).apply();
    }

    public static final void i(Context context, j jVar, int i) {
        gg0.e(context, "context");
        gg0.e(jVar, "type");
        SharedPreferences.Editor edit = d(context).edit();
        StringBuilder q = ic.q("SaveTimesSinceLastInterstitial-");
        q.append(jVar.name());
        edit.putInt(q.toString(), i).apply();
    }
}
