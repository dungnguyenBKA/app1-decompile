package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.InflateException;
import androidx.appcompat.widget.SwitchCompat;
import java.lang.reflect.Method;

public class SwitchCompatFix extends SwitchCompat {
    private Method Q = null;
    private Method R = null;

    public SwitchCompatFix(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m();
    }

    private final void m() {
        try {
            this.Q = SwitchCompat.class.getDeclaredMethod("c", new Class[0]);
            this.R = SwitchCompat.class.getDeclaredMethod("j", Float.TYPE);
            this.Q.setAccessible(true);
            this.R.setAccessible(true);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        } catch (SecurityException e3) {
            e3.printStackTrace();
        } catch (InflateException e4) {
            e4.printStackTrace();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public SwitchCompatFix(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m();
    }
}
