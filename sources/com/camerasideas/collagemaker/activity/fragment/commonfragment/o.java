package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.g;
import androidx.fragment.app.b;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class o extends b {

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            o oVar = o.this;
            Objects.requireNonNull(oVar);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", oVar.C().getPackageName(), null));
            oVar.j1(intent);
        }
    }

    @Override // androidx.fragment.app.b
    public Dialog p1(Bundle bundle) {
        String format = String.format("%s\n%s\n%s", T(R.string.eq), T(R.string.hy), T(R.string.i9));
        g.a aVar = new g.a(C());
        aVar.d(true);
        aVar.o(T(R.string.ge));
        aVar.l(T(R.string.er), new a());
        aVar.h(format);
        return aVar.a();
    }
}
