package defpackage;

import android.util.Log;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import com.camerasideas.collagemaker.appdata.b;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* renamed from: dn  reason: default package */
public class dn implements zm {
    private List<MediaFileInfo> a = new ArrayList();
    private List<MediaFileInfo> b = new ArrayList();

    /* access modifiers changed from: package-private */
    /* renamed from: dn$a */
    public class a implements Comparator<String> {
        final /* synthetic */ boolean b;

        a(dn dnVar, boolean z) {
            this.b = z;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            try {
                if (!str3.equals("/Recent") || str4.equals("/Recent")) {
                    if (!str4.equals("/Recent") || str3.equals("/Recent")) {
                        if (str3.equals("/Recent") && str4.equals("/Recent")) {
                            return 0;
                        }
                        String str5 = b.c;
                        if (!str3.equals(str5) || str4.equals(str5)) {
                            if (!str4.equals(str5) || str3.equals(str5)) {
                                if (str3.equals(str5) && str4.equals(str5)) {
                                    return 0;
                                }
                                if (this.b) {
                                    if (!str3.equals("/Google Photos") || str4.equals("/Google Photos")) {
                                        if (!str4.equals("/Google Photos") || str3.equals("/Google Photos")) {
                                            if (str3.equals("/Google Photos") && str4.equals("/Google Photos")) {
                                                return 0;
                                            }
                                        }
                                    }
                                }
                                String substring = str3.substring(str3.lastIndexOf("/"));
                                String substring2 = str4.substring(str4.lastIndexOf("/"));
                                if (!substring.toLowerCase().equals(substring2.toLowerCase())) {
                                    return substring.compareToIgnoreCase(substring2);
                                }
                                int compareTo = substring.compareTo(substring2);
                                if (compareTo <= 0) {
                                    if (compareTo == 0) {
                                        return str3.substring(0, str3.lastIndexOf("/")).compareTo(str4.substring(0, str4.lastIndexOf("/")));
                                    }
                                }
                            }
                        }
                    }
                    return 1;
                }
                return -1;
            } catch (Exception e) {
                e.printStackTrace();
                Log.e("PhotoFileScanner", "文件夹按照名称排序-Occur exception", e);
                return 0;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x0152  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x01b4  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x01cb  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01d4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.TreeMap<java.lang.String, java.util.List<com.camerasideas.collagemaker.appdata.MediaFileInfo>> a(android.content.Context r19, defpackage.zm.a r20, java.lang.String r21, boolean r22) {
        /*
        // Method dump skipped, instructions count: 485
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dn.a(android.content.Context, zm$a, java.lang.String, boolean):java.util.TreeMap");
    }
}
