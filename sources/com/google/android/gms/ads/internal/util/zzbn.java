package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzdmw;
import com.google.android.gms.internal.ads.zzdvu;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzwr;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nonnull;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbn {
    private static JSONObject a(Context context, Point point, Point point2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", c(context, point2.x));
            jSONObject.put("y", c(context, point2.y));
            jSONObject.put("start_x", c(context, point.x));
            jSONObject.put("start_y", c(context, point.y));
            return jSONObject;
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while putting signals into JSON object.", e);
            return null;
        }
    }

    private static JSONObject b(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", c(context, rect.right - rect.left));
        jSONObject.put("height", c(context, rect.bottom - rect.top));
        jSONObject.put("x", c(context, rect.left));
        jSONObject.put("y", c(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private static int c(Context context, int i) {
        return zzwr.zzqn().zzd(context, i);
    }

    private static int[] d(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0123 A[Catch:{ JSONException -> 0x014f }] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0133 A[Catch:{ JSONException -> 0x014f }] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0140  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x014b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.json.JSONObject zza(android.content.Context r16, android.view.View r17) {
        /*
        // Method dump skipped, instructions count: 342
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbn.zza(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static JSONObject zzb(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzr.zzkr();
            jSONObject.put("can_show_on_lock_screen", zzj.zzq(view));
            zzr.zzkr();
            jSONObject.put("is_keyguard_locked", zzj.zzat(context));
        } catch (JSONException unused) {
            zzazk.zzex("Unable to get lock screen information");
        }
        return jSONObject;
    }

    public static JSONObject zzbk(@Nonnull Context context) {
        JSONObject jSONObject = new JSONObject();
        zzr.zzkr();
        DisplayMetrics zza = zzj.zza((WindowManager) context.getSystemService("window"));
        try {
            jSONObject.put("width", c(context, zza.widthPixels));
            jSONObject.put("height", c(context, zza.heightPixels));
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean zzdh(int i) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcso)).booleanValue()) {
            return true;
        }
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsp)).booleanValue() || i <= 15299999;
    }

    public static JSONObject zzt(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczj)).booleanValue()) {
                zzr.zzkr();
                jSONObject.put("contained_in_scroll_view", zzj.zzs(view));
            } else {
                zzr.zzkr();
                jSONObject.put("contained_in_scroll_view", zzj.zzr(view) != -1);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static WindowManager.LayoutParams zzzq() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) zzwr.zzqr().zzd(zzabp.zzczm)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject zza(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        String str;
        String str2;
        JSONObject jSONObject;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject2 = new JSONObject();
        if (!(map == null || view == null)) {
            int[] d = d(view);
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, WeakReference<View>> next = it.next();
                View view2 = next.getValue().get();
                if (view2 != null) {
                    int[] d2 = d(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("width", c(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", c(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", c(context, d2[0] - d[0]));
                        jSONObject4.put("y", c(context, d2[1] - d[1]));
                        jSONObject4.put(str4, str3);
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = b(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", c(context, d2[0] - d[0]));
                            jSONObject.put("y", c(context, d2[1] - d[1]));
                            jSONObject.put(str4, str3);
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            str2 = str3;
                            str = str4;
                            try {
                                jSONObject3.put("font_size", (double) textView.getTextSize());
                                jSONObject3.put("text", textView.getText());
                            } catch (JSONException unused) {
                                zzazk.zzex("Unable to get asset views information");
                                it = it;
                                str3 = str2;
                                str4 = str;
                            }
                        } else {
                            str2 = str3;
                            str = str4;
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(next.getKey()) && view2.isClickable());
                        jSONObject2.put(next.getKey(), jSONObject3);
                    } catch (JSONException unused2) {
                        str2 = str3;
                        str = str4;
                        zzazk.zzex("Unable to get asset views information");
                        it = it;
                        str3 = str2;
                        str4 = str;
                    }
                    it = it;
                    str3 = str2;
                    str4 = str;
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject zza(String str, Context context, Point point, Point point2) {
        Exception e;
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("click_point", a(context, point, point2));
                jSONObject2.put("asset_id", str);
                return jSONObject2;
            } catch (Exception e2) {
                e = e2;
                jSONObject = jSONObject2;
            }
        } catch (Exception e3) {
            e = e3;
            zzazk.zzc("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
    }

    public static Point zza(MotionEvent motionEvent, View view) {
        int[] d = d(view);
        return new Point(((int) motionEvent.getRawX()) - d[0], ((int) motionEvent.getRawY()) - d[1]);
    }

    public static boolean zza(Context context, zzdmw zzdmw) {
        if (!zzdmw.zzhjo) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczk)).booleanValue()) {
            return ((Boolean) zzwr.zzqr().zzd(zzabp.zzczn)).booleanValue();
        }
        String str = (String) zzwr.zzqr().zzd(zzabp.zzczl);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            for (String str2 : zzdwk.zza(zzdvu.zzb(';')).zza(str)) {
                if (str2.equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }
}
