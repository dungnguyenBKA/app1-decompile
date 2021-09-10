package defpackage;

import android.app.Activity;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.reflect.InvocationTargetException;

/* renamed from: gb0  reason: default package */
public class gb0 extends za0 {
    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public int[] f(Activity activity) {
        return new int[]{82, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION};
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.za0
    public boolean h(Activity activity) {
        try {
            Class<?> cls = Class.forName("smartisanos.api.DisplayUtilsSmt");
            return ((Boolean) cls.getMethod("isFeatureSupport", Integer.TYPE).invoke(cls, 1)).booleanValue();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return false;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return false;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return false;
        }
    }
}
