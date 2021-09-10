package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
import com.vungle.warren.error.VungleException;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@TargetApi(VungleException.INVALID_SIZE)
public final class zzac extends zzz {
    static /* synthetic */ WindowInsets a(Activity activity, View view, WindowInsets windowInsets) {
        if (zzr.zzkv().zzxs().zzyt() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                zzf zzxs = zzr.zzkv().zzxs();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(str)) {
                        str = String.valueOf(str).concat("|");
                    }
                    String valueOf = String.valueOf(str);
                    String valueOf2 = String.valueOf(format);
                    str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                }
                zzxs.zzef(str);
            } else {
                zzr.zzkv().zzxs().zzef(str);
            }
        }
        b(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static void b(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = z ? 1 : 2;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final void zzi(Activity activity) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpu)).booleanValue() && zzr.zzkv().zzxs().zzyt() == null && !activity.isInMultiWindowMode()) {
            b(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new a(this, activity));
        }
    }
}
