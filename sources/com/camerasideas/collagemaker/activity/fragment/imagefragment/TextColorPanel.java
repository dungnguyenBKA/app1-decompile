package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.camerasideas.collagemaker.activity.adapter.k;
import com.camerasideas.collagemaker.activity.adapter.t;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import defpackage.dm;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class TextColorPanel extends um implements SeekBarWithTextView.a {
    private StyleEditText Y;
    private LinearLayoutManager Z;
    private t a0;
    private int b0 = 1;
    private List<un> c0;
    private dm.d d0 = new a();
    @BindView
    AppCompatImageView mImageView;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    SeekBarWithTextView mSeekBar;

    class a implements dm.d {
        a() {
        }

        @Override // defpackage.dm.d
        public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
            if (i != -1 && TextColorPanel.this.a0 != null && TextColorPanel.this.c0 != null && TextColorPanel.this.Y != null && TextColorPanel.this.a0.d(i) != 1) {
                boolean z = false;
                if (TextUtils.isEmpty(TextColorPanel.this.Y.getText())) {
                    if (mr.b() != null) {
                        mr.b().setGravity(17, 0, -c2.b(((tm) TextColorPanel.this).U, 50.0f));
                    }
                    mr.d(TextColorPanel.this.T(R.string.ia));
                } else if (TextColorPanel.this.a0.d(i) == 2 || TextColorPanel.this.a0.d(i) == 0) {
                    un unVar = (un) TextColorPanel.this.c0.get(i);
                    String b2 = unVar.b();
                    if (!b.d0(((tm) TextColorPanel.this).U) && (com.camerasideas.collagemaker.appdata.b.e.contains(b2) || com.camerasideas.collagemaker.appdata.b.f.contains(b2))) {
                        z = true;
                    }
                    if (z) {
                        Bundle bundle = new Bundle();
                        String str = "ProTextColor";
                        if (TextColorPanel.this.b0 != 1) {
                            if (TextColorPanel.this.b0 == 2) {
                                str = "ProOutLineColor";
                            } else if (TextColorPanel.this.b0 == 3) {
                                str = "ProBackgroundColor";
                            }
                        }
                        bundle.putString("PRO_FROM", str);
                        b.s(((tm) TextColorPanel.this).W, SubscribeProFragment.class, bundle, R.id.hn, true, true);
                        return;
                    }
                    TextColorPanel.this.a0.C(i);
                    if (TextColorPanel.this.b0 == 1) {
                        TextColorPanel.this.Y.D(unVar.b());
                        TextColorPanel.this.w1(true);
                    } else if (TextColorPanel.this.b0 == 2) {
                        if (TextColorPanel.this.Y.b().k() == 0) {
                            TextColorPanel.this.mSeekBar.l(50);
                            TextColorPanel.this.Y.q(50);
                        } else {
                            TextColorPanel textColorPanel = TextColorPanel.this;
                            textColorPanel.mSeekBar.l(textColorPanel.Y.b().k());
                        }
                        TextColorPanel.this.w1(true ^ TextUtils.isEmpty(unVar.b()));
                        TextColorPanel.this.Y.o(unVar.b());
                    } else if (TextColorPanel.this.b0 == 3) {
                        if (TextColorPanel.this.Y.b().f() == 0) {
                            TextColorPanel.this.mSeekBar.l(100);
                            TextColorPanel.this.Y.l(100.0f);
                        } else {
                            TextColorPanel textColorPanel2 = TextColorPanel.this;
                            textColorPanel2.mSeekBar.l(textColorPanel2.Y.b().f());
                        }
                        TextColorPanel.this.w1(true ^ TextUtils.isEmpty(unVar.b()));
                        TextColorPanel.this.Y.m(unVar.b());
                    }
                } else if (TextColorPanel.this.a0.d(i) == 3) {
                    TextColorPanel.this.w1(true);
                    TextColorPanel.this.a0.C(i);
                    int z2 = TextColorPanel.this.a0.z(i);
                    if (TextColorPanel.this.b0 == 1) {
                        TextColorPanel.this.Y.E(z2);
                    } else if (TextColorPanel.this.b0 == 2) {
                        if (TextColorPanel.this.Y.b().k() == 0) {
                            TextColorPanel.this.mSeekBar.l(50);
                            TextColorPanel.this.Y.q(50);
                        } else {
                            TextColorPanel textColorPanel3 = TextColorPanel.this;
                            textColorPanel3.mSeekBar.l(textColorPanel3.Y.b().k());
                        }
                        TextColorPanel.this.Y.p(z2);
                    } else if (TextColorPanel.this.b0 == 3) {
                        if (TextColorPanel.this.Y.b().f() == 0) {
                            TextColorPanel.this.mSeekBar.l(100);
                            TextColorPanel.this.Y.l(100.0f);
                        } else {
                            TextColorPanel textColorPanel4 = TextColorPanel.this;
                            textColorPanel4.mSeekBar.l(textColorPanel4.Y.b().f());
                        }
                        TextColorPanel.this.Y.n(z2);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void w1(boolean z) {
        SeekBarWithTextView seekBarWithTextView = this.mSeekBar;
        if (seekBarWithTextView != null) {
            seekBarWithTextView.i(z);
            if (!z) {
                this.mSeekBar.l(0);
            }
        }
        AppCompatImageView appCompatImageView = this.mImageView;
        if (appCompatImageView != null) {
            appCompatImageView.setAlpha(z ? 1.0f : 0.4f);
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        Fragment M = M();
        if (M instanceof TextFontStylePanel) {
            StyleEditText u1 = ((TextFontStylePanel) M).u1();
            this.Y = u1;
            if (u1 == null || u1.b() == null) {
                b.t0(this.W, TextColorPanel.class);
                return;
            }
        }
        Bundle A = A();
        if (A() != null) {
            this.b0 = A.getInt("text_style", 1);
        }
        int i = this.b0;
        if (i == 1) {
            ArrayList arrayList = new ArrayList();
            for (String str : com.camerasideas.collagemaker.appdata.b.d) {
                arrayList.add(new un(str, 2));
            }
            for (String str2 : com.camerasideas.collagemaker.appdata.b.e) {
                arrayList.add(new un(str2, 2));
            }
            for (String str3 : com.camerasideas.collagemaker.appdata.b.f) {
                arrayList.add(new un(str3, 2));
            }
            for (on onVar : rn.a()) {
                if (onVar instanceof qn) {
                    un unVar = new un();
                    unVar.e(3);
                    unVar.f(((qn) onVar).a());
                    arrayList.add(unVar);
                }
            }
            this.c0 = arrayList;
            this.mSeekBar.l((int) (this.Y.b().x() * 100.0f));
            this.mImageView.setImageResource(R.drawable.iv);
        } else if (i == 2) {
            ArrayList arrayList2 = new ArrayList();
            un unVar2 = new un();
            unVar2.e(0);
            unVar2.f(R.drawable.gb);
            arrayList2.add(unVar2);
            un unVar3 = new un();
            unVar3.e(1);
            arrayList2.add(unVar3);
            for (String str4 : com.camerasideas.collagemaker.appdata.b.d) {
                arrayList2.add(new un(str4, 2));
            }
            for (String str5 : com.camerasideas.collagemaker.appdata.b.e) {
                arrayList2.add(new un(str5, 2));
            }
            for (String str6 : com.camerasideas.collagemaker.appdata.b.f) {
                arrayList2.add(new un(str6, 2));
            }
            for (on onVar2 : rn.a()) {
                if (onVar2 instanceof qn) {
                    un unVar4 = new un();
                    unVar4.e(3);
                    unVar4.f(((qn) onVar2).a());
                    arrayList2.add(unVar4);
                }
            }
            this.c0 = arrayList2;
            this.mSeekBar.l(this.Y.b().k());
            this.mImageView.setImageResource(R.drawable.ii);
        } else if (i == 3) {
            ArrayList arrayList3 = new ArrayList();
            un unVar5 = new un();
            unVar5.e(0);
            unVar5.f(R.drawable.gb);
            arrayList3.add(unVar5);
            un unVar6 = new un();
            unVar6.e(1);
            arrayList3.add(unVar6);
            for (String str7 : com.camerasideas.collagemaker.appdata.b.d) {
                arrayList3.add(new un(str7, 2));
            }
            for (String str8 : com.camerasideas.collagemaker.appdata.b.e) {
                arrayList3.add(new un(str8, 2));
            }
            for (String str9 : com.camerasideas.collagemaker.appdata.b.f) {
                arrayList3.add(new un(str9, 2));
            }
            for (on onVar3 : rn.a()) {
                if (onVar3 instanceof qn) {
                    un unVar7 = new un();
                    unVar7.e(3);
                    unVar7.f(((qn) onVar3).a());
                    arrayList3.add(unVar7);
                }
            }
            this.c0 = arrayList3;
            this.mSeekBar.l(this.Y.b().f());
            this.mImageView.setImageResource(R.drawable.iv);
        }
        this.a0 = new t(this.c0, this.W);
        this.Z = new LinearLayoutManager(0, false);
        this.mRecyclerView.addItemDecoration(new k(c2.b(this.U, 7.5f), true));
        this.mRecyclerView.setLayoutManager(this.Z);
        this.mRecyclerView.setAdapter(this.a0);
        x1();
        this.mSeekBar.k(this);
        dm.d(this.mRecyclerView).e(this.d0);
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void d(SeekBarWithTextView seekBarWithTextView, int i, boolean z) {
        if (z) {
            float f = (float) i;
            float f2 = f / 100.0f;
            if (f2 >= 0.0f && f2 <= 1.0f) {
                int i2 = this.b0;
                if (i2 == 1) {
                    this.Y.B(f2);
                } else if (i2 == 2) {
                    this.Y.q(i);
                } else if (i2 == 3) {
                    this.Y.l(f);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bo;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new xn();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void p(SeekBarWithTextView seekBarWithTextView) {
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void t(SeekBarWithTextView seekBarWithTextView) {
    }

    public void x1() {
        int i = this.b0;
        if (i == 1) {
            this.a0.B(this.Y.b().z() == 0 ? this.Y.b().y() : this.Y.b().z());
            this.mSeekBar.l((int) (this.Y.b().x() * 100.0f));
            w1(true);
        } else if (i == 2) {
            this.a0.B(this.Y.b().j() == 0 ? this.Y.b().i() : this.Y.b().j());
            this.mSeekBar.l(this.Y.b().k());
            w1(this.Y.b().b());
        } else if (i == 3) {
            this.a0.B(this.Y.b().h() == 0 ? this.Y.b().g() : this.Y.b().h());
            this.mSeekBar.l(this.Y.b().f());
            w1(this.Y.b().c());
        }
        this.Z.R1(this.a0.A(), c2.h(this.U) / 2);
    }
}
