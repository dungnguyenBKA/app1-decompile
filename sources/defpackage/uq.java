package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.camerasideas.collagemaker.activity.BaseActivity;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.appdata.g;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.vungle.warren.persistence.IdColumns;
import defpackage.jh0;
import dev.drojian.rate.c;
import inshot.collage.adconfig.d;
import java.util.Locale;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: uq  reason: default package */
public class uq {
    private static long a;
    private static long b;

    public static Typeface a(Context context) {
        return mm.a(context, "Roboto-Medium.ttf");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0052, code lost:
        if (r0 != 9) goto L_0x0055;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean b(android.content.Context r7, boolean r8) {
        /*
        // Method dump skipped, instructions count: 127
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uq.b(android.content.Context, boolean):boolean");
    }

    public static boolean c(Context context) {
        String m = cc0.m(context);
        if (!TextUtils.isEmpty(m)) {
            try {
                JSONObject jSONObject = new JSONObject(m);
                if (jSONObject.has("rateControl")) {
                    return jSONObject.optJSONObject("rateControl").optBoolean("enabledUseRateSDK", true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public static int d(Context context) {
        return Math.max((int) context.getResources().getDimension(R.dimen.bh), d.b(context));
    }

    public static String e(Context context) {
        TelephonyManager telephonyManager;
        String str = "";
        if (!(!TextUtils.isEmpty(str) || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null || telephonyManager.getSimCountryIso() == null)) {
            str = telephonyManager.getSimCountryIso().toUpperCase();
        }
        return TextUtils.isEmpty(str) ? Locale.getDefault().getCountry() : str;
    }

    public static boolean f() {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = currentTimeMillis - b < 300;
        b = currentTimeMillis;
        return z;
    }

    public static boolean g(View view) {
        return view != null && (view.isShown() || view.getVisibility() == 0);
    }

    public static void h(BaseActivity baseActivity) {
        c cVar = new c(baseActivity, false, false);
        if (cc0.g(baseActivity, "Rate-allowIndonesia", false)) {
            cVar.a(true);
        }
        if (cc0.g(baseActivity, "Rate-CancelOnTouchOutside", false)) {
            cVar.c(true);
        }
        cVar.d(baseActivity, new zq(baseActivity));
    }

    public static boolean i(long j, int i) {
        if (j - a < ((long) i)) {
            return false;
        }
        a = j;
        return true;
    }

    public static void j(Context context) {
        gh0 gh0 = new gh0();
        jh0.a aVar = new jh0.a();
        aVar.g("http://ip-api.com/json");
        aVar.e(HttpGet.METHOD_NAME, null);
        gh0.k(aVar.b()).o(new yq(context));
    }

    public static void k(Context context, com.camerasideas.collagemaker.appdata.d dVar) {
        em.h("FbAnalyticsUtils", dVar.name());
        l(context, dVar.name(), null, null);
    }

    private static void l(Context context, String str, String[] strArr, Object[] objArr) {
        if (context != null) {
            FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
            Bundle bundle = new Bundle();
            if (!(strArr == null || objArr == null)) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        if (objArr[i] instanceof String) {
                            bundle.putString(strArr[i], (String) objArr[i]);
                        } else if (objArr[i] instanceof Long) {
                            bundle.putLong(strArr[i], ((Long) objArr[i]).longValue());
                        } else if (objArr[i] instanceof Integer) {
                            bundle.putInt(strArr[i], ((Integer) objArr[i]).intValue());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            instance.a(str, bundle);
        }
    }

    public static void m(Context context, g gVar) {
        if (f.g(context).getInt("UserFlowState", -1) < gVar.ordinal()) {
            String str = "";
            String str2 = (gVar == g.HOME || !e.b()) ? str : "Cutout";
            StringBuilder sb = new StringBuilder();
            sb.append(gVar.name());
            sb.append(!TextUtils.isEmpty(str2) ? ic.i("-", str2) : str);
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(gVar.name())) {
                FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
                Bundle bundle = new Bundle();
                bundle.putString("Content", sb2);
                instance.a("UserFlow", bundle);
                f.n(context, gVar.ordinal());
            }
            if (f.d(context) == 1 && rq.k(context)) {
                StringBuilder q = ic.q("NewUser:");
                q.append(gVar.name());
                if (!TextUtils.isEmpty(str2)) {
                    str = ic.i("-", str2);
                }
                q.append(str);
                sb2 = q.toString();
            }
            em.h("FbAnalyticsUtils", "UserFlow/" + sb2);
            if (!TextUtils.isEmpty(gVar.name())) {
                FirebaseAnalytics instance2 = FirebaseAnalytics.getInstance(context);
                Bundle bundle2 = new Bundle();
                bundle2.putString("Content", sb2);
                instance2.a("UserFlow", bundle2);
                f.n(context, gVar.ordinal());
            }
        }
    }

    public static void n(Context context, String str, Object obj) {
        em.h("FbAnalyticsUtils", str + "/" + obj);
        if (!TextUtils.isEmpty(str)) {
            l(context, "select_content", new String[]{"content_type", IdColumns.COLUMN_IDENTIFIER}, new Object[]{str, obj});
        }
    }

    public static void o(Context context, String str) {
        if (context != null) {
            em.h("FbAnalyticsUtils", "UserEvent/" + str);
            if (!TextUtils.isEmpty(str)) {
                FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
                Bundle bundle = new Bundle();
                bundle.putString("Content", str);
                instance.a("UserEvent", bundle);
            }
        }
    }

    public static void p(Context context, TextView textView) {
        Typeface a2;
        if (textView != null && (a2 = mm.a(context, "Roboto-Medium.ttf")) != null) {
            textView.setTypeface(a2);
        }
    }

    public static void q(View view, int i) {
        if (view != null && i > 0 && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin += i;
            view.requestLayout();
        }
    }

    public static void r(View view, int i) {
        if (Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId() && view != null) {
            view.setBackgroundResource(i);
        }
    }

    public static void s(View view, int i) {
        if (Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId() && view != null && view.getVisibility() != i) {
            view.setVisibility(i);
        }
    }

    public static void t(View view, boolean z) {
        if (Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId() && view != null) {
            int i = z ? 0 : 8;
            if (view.getVisibility() != i) {
                view.setVisibility(i);
            }
        }
    }

    public static String u(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            if (!str.contains(" ")) {
                return str.substring(0, 1).toUpperCase() + str.substring(1, str.length()).toLowerCase();
            }
            String[] split = str.split(" ");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < split.length; i++) {
                String str2 = split[i];
                sb.append(str2.substring(0, 1).toUpperCase());
                sb.append(str2.substring(1, str2.length()).toLowerCase());
                if (i != split.length - 1) {
                    sb.append(" ");
                }
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static void v(TextView textView) {
        if (textView != null && textView.getText() != null) {
            String charSequence = textView.getText().toString();
            if (!TextUtils.isEmpty(charSequence)) {
                String u = u(charSequence);
                if (!TextUtils.isEmpty(u)) {
                    charSequence = u;
                }
                textView.setText(charSequence);
            }
        }
    }

    public static void w(TextView textView, Context context) {
        if (textView != null && context != null && textView.getText() != null) {
            String charSequence = textView.getText().toString();
            if (!TextUtils.isEmpty(charSequence)) {
                try {
                    charSequence = charSequence.substring(0, 1).toUpperCase() + charSequence.substring(1, charSequence.length()).toLowerCase();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                textView.setText(charSequence);
            }
        }
    }

    public static void x(TextView textView, Context context) {
        if (textView != null && context != null) {
            textView.setText(textView.getText().toString().toUpperCase(context.getResources().getConfiguration().locale));
        }
    }
}
