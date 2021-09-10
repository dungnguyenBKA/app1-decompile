package defpackage;

import android.annotation.TargetApi;
import android.app.Application;
import android.os.Handler;
import android.widget.Toast;
import com.vungle.warren.error.VungleException;
import java.lang.reflect.Field;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: ir  reason: default package */
public final class ir extends gr {
    public ir(Application application) {
        super(application);
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
            declaredField2.setAccessible(true);
            declaredField2.set(obj, new hr((Handler) declaredField2.get(obj)));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
    }
}
