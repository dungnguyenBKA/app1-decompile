package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.core.content.a;

/* renamed from: zh  reason: default package */
public final class zh {
    private static volatile boolean a = true;

    public static Drawable a(Context context, int i, Resources.Theme theme) {
        return c(context, context, i, theme);
    }

    public static Drawable b(Context context, Context context2, int i) {
        return c(context, context2, i, null);
    }

    private static Drawable c(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (a) {
                return d.b(theme != null ? new m(context2, theme) : context2, i);
            }
        } catch (NoClassDefFoundError unused) {
            a = false;
        } catch (IllegalStateException e) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return a.c(context2, i);
            }
            throw e;
        } catch (Resources.NotFoundException unused2) {
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return c1.c(context2.getResources(), i, theme);
    }
}
