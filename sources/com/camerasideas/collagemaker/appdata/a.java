package com.camerasideas.collagemaker.appdata;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;

public abstract class a {
    protected static boolean a(Bundle bundle, String str, boolean z) {
        return bundle == null ? z : bundle.getBoolean(str, z);
    }

    public static boolean b(Bundle bundle) {
        return a(bundle, "KEY_ENABLED_SHOW_BTN_HOME", false);
    }

    public static ArrayList<MediaFileInfo> c(Bundle bundle) {
        ArrayList<MediaFileInfo> parcelableArrayList = bundle != null ? bundle.getParcelableArrayList("KEY_FILE_PATHS") : null;
        em.h("AppBaseBundle", "filePaths=" + parcelableArrayList);
        if (parcelableArrayList != null) {
            StringBuilder q = ic.q("filePaths size=");
            q.append(parcelableArrayList.size());
            em.h("AppBaseBundle", q.toString());
        }
        return parcelableArrayList;
    }

    public static boolean d(Bundle bundle) {
        return a(bundle, "KEY_HAS_POPUP_RATE", false);
    }

    public static boolean e(Bundle bundle) {
        return a(bundle, "HAS_REPORT_FEEDBACK", false);
    }

    public static Uri f(Bundle bundle) {
        String str = "";
        if (bundle != null) {
            str = bundle.getString("IMAGE_PATH_FROM_CAMERA", str);
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                return Uri.parse(str);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
