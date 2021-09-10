package inshot.collage.adconfig;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.WindowManager;
import com.google.ads.ADRequestList;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.vungle.warren.persistence.IdColumns;
import java.util.Objects;

public final class p {
    public static final int a(Context context, float f) {
        gg0.e(context, "context");
        Resources resources = context.getResources();
        gg0.d(resources, ADRequestList.ORDER_R);
        return (int) TypedValue.applyDimension(1, f, resources.getDisplayMetrics());
    }

    public static final int b(Context context) {
        gg0.e(context, "context");
        Context applicationContext = context.getApplicationContext();
        gg0.d(applicationContext, "context.applicationContext");
        return d(applicationContext).heightPixels;
    }

    public static final int c(Context context) {
        gg0.e(context, "context");
        Context applicationContext = context.getApplicationContext();
        gg0.d(applicationContext, "context.applicationContext");
        return d(applicationContext).widthPixels;
    }

    private static final DisplayMetrics d(Context context) {
        Object systemService = context.getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final void e(Context context, String str, Object obj) {
        if (!(context == null || obj == null)) {
            o.a("FbAnalyticsUtils", str + '/' + obj);
            if (!TextUtils.isEmpty(str)) {
                String[] strArr = {"content_type", IdColumns.COLUMN_IDENTIFIER, "item_name"};
                Object[] objArr = {str, obj, obj};
                FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
                gg0.d(instance, "FirebaseAnalytics.getInstance(context)");
                Bundle bundle = new Bundle();
                for (int i = 0; i < 3; i++) {
                    try {
                        if (objArr[i] instanceof String) {
                            String str2 = strArr[i];
                            Object obj2 = objArr[i];
                            if (obj2 != null) {
                                bundle.putString(str2, (String) obj2);
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                            }
                        } else if (objArr[i] instanceof Long) {
                            String str3 = strArr[i];
                            Object obj3 = objArr[i];
                            if (obj3 != null) {
                                bundle.putLong(str3, ((Long) obj3).longValue());
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                            }
                        } else if (objArr[i] instanceof Integer) {
                            String str4 = strArr[i];
                            Object obj4 = objArr[i];
                            if (obj4 != null) {
                                bundle.putInt(str4, ((Integer) obj4).intValue());
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                            }
                        } else {
                            continue;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                instance.a("select_content", bundle);
            }
        }
    }
}
