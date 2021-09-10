package defpackage;

import android.app.Application;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

/* renamed from: gr  reason: default package */
public class gr extends Toast {
    private TextView a;

    public gr(Application application) {
        super(application);
    }

    static TextView a(View view) {
        TextView b;
        if (view instanceof TextView) {
            return (TextView) view;
        }
        if (view.findViewById(16908299) instanceof TextView) {
            return (TextView) view.findViewById(16908299);
        }
        if ((view instanceof ViewGroup) && (b = b((ViewGroup) view)) != null) {
            return b;
        }
        throw new IllegalArgumentException("The layout must contain a TextView");
    }

    private static TextView b(ViewGroup viewGroup) {
        TextView b;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof TextView) {
                return (TextView) childAt;
            }
            if ((childAt instanceof ViewGroup) && (b = b((ViewGroup) childAt)) != null) {
                return b;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void c(TextView textView) {
        this.a = textView;
    }

    @Override // android.widget.Toast
    public void setText(CharSequence charSequence) {
        this.a.setText(charSequence);
    }

    public void setView(View view) {
        super.setView(view);
        this.a = a(view);
    }
}
