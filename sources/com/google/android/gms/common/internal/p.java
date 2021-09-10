package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import java.util.Objects;
import javax.annotation.Nullable;
import photoeditor.cutout.backgrounderaser.R;

public class p {
    private final Resources a;
    private final String b;

    public p(Context context) {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        this.a = resources;
        this.b = resources.getResourcePackageName(R.string.b6);
    }

    @Nullable
    public String a(String str) {
        int identifier = this.a.getIdentifier(str, "string", this.b);
        if (identifier == 0) {
            return null;
        }
        return this.a.getString(identifier);
    }
}
