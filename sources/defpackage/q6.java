package defpackage;

import android.util.TypedValue;
import android.view.View;

/* renamed from: q6  reason: default package */
public final class q6 {
    static {
        new TypedValue();
    }

    public static <T> T a(View view, int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            String c = c(view, i);
            StringBuilder sb = new StringBuilder();
            sb.append("View '");
            sb.append(c);
            sb.append("' with ID ");
            sb.append(i);
            sb.append(" for ");
            throw new IllegalStateException(ic.l(sb, str, " was of the wrong type. See cause for more info."), e);
        }
    }

    public static View b(View view, int i, String str) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        String c = c(view, i);
        StringBuilder sb = new StringBuilder();
        sb.append("Required view '");
        sb.append(c);
        sb.append("' with ID ");
        sb.append(i);
        sb.append(" for ");
        throw new IllegalStateException(ic.l(sb, str, " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation."));
    }

    private static String c(View view, int i) {
        if (view.isInEditMode()) {
            return "<unavailable while editing>";
        }
        return view.getContext().getResources().getResourceEntryName(i);
    }
}
