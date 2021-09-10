package com.camerasideas.collagemaker.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.b;
import com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.ArrayList;

public class ShareEntryEditActivity extends AppCompatActivity {
    private void o(final Uri uri, String str, int i) {
        AnonymousClass1 r0 = new FragmentFactory$AbsViewClickWrapper() {
            /* class com.camerasideas.collagemaker.activity.ShareEntryEditActivity.AnonymousClass1 */
            final View.OnClickListener c = new a();
            final DialogInterface.OnCancelListener d = new b();
            final DialogInterface.OnDismissListener e = new c();
            final View.OnClickListener f = new d();

            /* renamed from: com.camerasideas.collagemaker.activity.ShareEntryEditActivity$1$a */
            class a implements View.OnClickListener {
                a() {
                }

                public void onClick(View view) {
                    AnonymousClass1 r4 = AnonymousClass1.this;
                    ShareEntryEditActivity shareEntryEditActivity = ShareEntryEditActivity.this;
                    Uri uri = uri;
                    shareEntryEditActivity.p(uri != null ? uri.toString() : "", false, "", "");
                }
            }

            /* renamed from: com.camerasideas.collagemaker.activity.ShareEntryEditActivity$1$b */
            class b implements DialogInterface.OnCancelListener {
                b() {
                }

                public void onCancel(DialogInterface dialogInterface) {
                    AnonymousClass1 r4 = AnonymousClass1.this;
                    ShareEntryEditActivity shareEntryEditActivity = ShareEntryEditActivity.this;
                    Uri uri = uri;
                    shareEntryEditActivity.p(uri != null ? uri.toString() : "", false, "", "");
                }
            }

            /* renamed from: com.camerasideas.collagemaker.activity.ShareEntryEditActivity$1$c */
            class c implements DialogInterface.OnDismissListener {
                c() {
                }

                public void onDismiss(DialogInterface dialogInterface) {
                    AnonymousClass1 r4 = AnonymousClass1.this;
                    ShareEntryEditActivity shareEntryEditActivity = ShareEntryEditActivity.this;
                    Uri uri = uri;
                    shareEntryEditActivity.p(uri != null ? uri.toString() : "", false, "", "");
                }
            }

            /* renamed from: com.camerasideas.collagemaker.activity.ShareEntryEditActivity$1$d */
            class d implements View.OnClickListener {
                d() {
                }

                public void onClick(View view) {
                    AnonymousClass1 r7 = AnonymousClass1.this;
                    ShareEntryEditActivity shareEntryEditActivity = ShareEntryEditActivity.this;
                    Uri uri = uri;
                    String str = "";
                    String uri2 = uri != null ? uri.toString() : str;
                    String d = AnonymousClass1.this.d(ReportDBAdapter.ReportColumns.TABLE_NAME) == null ? str : AnonymousClass1.this.d(ReportDBAdapter.ReportColumns.TABLE_NAME);
                    if (AnonymousClass1.this.d("subject") != null) {
                        str = AnonymousClass1.this.d("subject");
                    }
                    shareEntryEditActivity.p(uri2, false, d, str);
                }
            }

            @Override // com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper
            public View.OnClickListener a() {
                return this.c;
            }

            @Override // com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper
            public DialogInterface.OnCancelListener b() {
                return this.d;
            }

            @Override // com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper
            public DialogInterface.OnDismissListener c() {
                return this.e;
            }

            @Override // com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper
            public View.OnClickListener e() {
                return this.f;
            }
        };
        StringBuilder q = ic.q("showOpenFailDialog-Uri=");
        q.append(uri != null ? uri.toString() : null);
        em.h("ShareEntryEditActivity", q.toString());
        b.H0(this, str, i, r0);
        if (i != 0 && i != 1) {
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void p(String str, boolean z, String str2, String str3) {
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            Intent intent = new Intent(this, DummyActivity.class);
            intent.setFlags(67108864);
            intent.putExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", true);
            intent.putStringArrayListExtra("EXTRA_KEY_LIST_PATHS", arrayList);
            intent.putExtra("EXTRA_KEY_URI_SUPPORTED", z);
            intent.putExtra("EXTRA_KEY_REPORT_MSG", str2);
            intent.putExtra("EXTRA_KEY_SUBJECT_MSG", str3);
            intent.putExtra("EXTRA_KEY_MODE", 4);
            em.h("ShareEntryEditActivity", "分享默认前置设置模板，规避后面的因未正确设置模板导致的崩溃问题");
            startActivity(intent);
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00d4, code lost:
        if (r9 == null) goto L_0x00d6;
     */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00d0  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0124  */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r9) {
        /*
        // Method dump skipped, instructions count: 300
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.ShareEntryEditActivity.onCreate(android.os.Bundle):void");
    }
}
