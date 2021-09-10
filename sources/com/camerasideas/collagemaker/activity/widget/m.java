package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

public class m extends Toast {

    private class a implements Handler.Callback {
        private final Handler b;

        a(m mVar, Handler handler) {
            this.b = handler;
        }

        public boolean handleMessage(Message message) {
            try {
                this.b.handleMessage(message);
                return true;
            } catch (Throwable th) {
                th.printStackTrace();
                return true;
            }
        }
    }

    private class b implements Runnable {
        private final Runnable b;

        b(m mVar, Runnable runnable) {
            this.b = runnable;
        }

        public void run() {
            try {
                this.b.run();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public m(Context context) {
        super(context);
    }

    private static Field a(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != Object.class; cls = cls.getSuperclass()) {
            try {
                return cls.getDeclaredField(str);
            } catch (NoSuchFieldException unused) {
            }
        }
        return null;
    }

    private static Object b(Object obj, String str) {
        Field a2 = a(obj, str);
        if (a2 != null) {
            try {
                if (!a2.isAccessible()) {
                    a2.setAccessible(true);
                }
                return a2.get(obj);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    private static boolean c(Object obj, String str, Object obj2) {
        Field a2 = a(obj, str);
        if (a2 == null) {
            return false;
        }
        try {
            if (Modifier.isFinal(a2.getModifiers())) {
                Field declaredField = Field.class.getDeclaredField("accessFlags");
                declaredField.setAccessible(true);
                declaredField.setInt(a2, a2.getModifiers() & -17);
            }
            if (!a2.isAccessible()) {
                a2.setAccessible(true);
            }
            a2.set(obj, obj2);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i) {
        if (Build.VERSION.SDK_INT != 25) {
            return Toast.makeText(context, charSequence, i);
        }
        m mVar = new m(context);
        Resources resources = context.getResources();
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(resources.getIdentifier("transient_notification", "layout", "android"), (ViewGroup) null);
        ((TextView) inflate.findViewById(resources.getIdentifier("message", FacebookAdapter.KEY_ID, "android"))).setText(charSequence);
        mVar.setView(inflate);
        mVar.setDuration(i);
        return mVar;
    }

    public void show() {
        boolean z = false;
        if (Build.VERSION.SDK_INT == 25) {
            try {
                Object b2 = b(this, "mTN");
                if (b2 != null) {
                    Object b3 = b(b2, "mShow");
                    if (b3 instanceof Runnable) {
                        z = c(b2, "mShow", new b(this, (Runnable) b3));
                    }
                    if (!z) {
                        Object b4 = b(b2, "mHandler");
                        if (b4 instanceof Handler) {
                            z = c(b4, "mCallback", new a(this, (Handler) b4));
                        }
                    }
                    if (!z) {
                        Log.e("ToastCompat", "tryToHack error.");
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        super.show();
    }
}
