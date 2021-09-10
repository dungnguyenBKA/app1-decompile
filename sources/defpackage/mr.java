package defpackage;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* renamed from: mr  reason: default package */
public final class mr {
    private static kr a;
    private static fr b;
    private static Toast c;

    private static void a() {
        if (c == null) {
            throw new IllegalStateException("ToastUtils has not been initialized");
        }
    }

    public static Toast b() {
        return c;
    }

    public static void c(Application application) {
        gr grVar;
        boolean z;
        pr prVar = new pr(application);
        if (a == null) {
            a = new kr();
        }
        if (b == null) {
            lr lrVar = new lr();
            b = lrVar;
            Toast toast = c;
            if (toast != null) {
                lrVar.a(toast);
            }
        }
        Objects.requireNonNull((lr) b);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            grVar = new er(application);
        } else if (i == 25) {
            grVar = new ir(application);
        } else {
            boolean z2 = true;
            if (i < 29) {
                if (i >= 24) {
                    z = ((NotificationManager) application.getSystemService(NotificationManager.class)).areNotificationsEnabled();
                } else {
                    AppOpsManager appOpsManager = (AppOpsManager) application.getSystemService("appops");
                    try {
                        Class<?> cls = appOpsManager.getClass();
                        Class<?> cls2 = Integer.TYPE;
                        if (((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) appOpsManager.getClass().getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(application.getApplicationInfo().uid), application.getPackageName())).intValue() != 0) {
                            z = false;
                        }
                    } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
                    }
                    z = true;
                }
                if (!z && !"xiaomi".equals(Build.MANUFACTURER.toLowerCase())) {
                    z2 = false;
                }
            }
            if (z2) {
                grVar = new gr(application);
            } else {
                grVar = new er(application);
            }
        }
        if (c != null && grVar.getView() == null) {
            grVar.setView(c.getView());
            grVar.setGravity(c.getGravity(), c.getXOffset(), c.getYOffset());
            grVar.setMargin(c.getHorizontalMargin(), c.getVerticalMargin());
        }
        c = grVar;
        fr frVar = b;
        if (frVar != null) {
            ((lr) frVar).a(grVar);
        }
        TextView textView = new TextView(application);
        textView.setId(16908299);
        textView.setTextColor(-1157627904);
        textView.setTextSize(0, prVar.g());
        int i2 = Build.VERSION.SDK_INT;
        textView.setPaddingRelative(prVar.e(), prVar.f(), prVar.e(), prVar.f());
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1381654);
        gradientDrawable.setCornerRadius((float) prVar.d());
        textView.setBackground(gradientDrawable);
        if (i2 >= 21) {
            textView.setZ((float) 30);
        }
        textView.setMaxLines(5);
        a();
        Context context = textView.getContext();
        if ((context instanceof Activity) || (context instanceof Service)) {
            throw new IllegalArgumentException("The view must be initialized using the context of the application");
        }
        Toast toast2 = c;
        if (toast2 != null) {
            toast2.cancel();
            c.setView(textView);
        }
        int b2 = prVar.b();
        a();
        a();
        c.setGravity(Gravity.getAbsoluteGravity(80, c.getView().getContext().getResources().getConfiguration().getLayoutDirection()), 0, b2);
    }

    public static synchronized void d(CharSequence charSequence) {
        synchronized (mr.class) {
            a();
            Objects.requireNonNull(a);
            if (!(charSequence == null || "".equals(charSequence.toString()))) {
                ((lr) b).b(charSequence);
            }
        }
    }
}
