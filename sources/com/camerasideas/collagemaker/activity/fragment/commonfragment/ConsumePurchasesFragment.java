package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.android.billingclient.api.j;
import com.camerasideas.collagemaker.activity.adapter.g;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class ConsumePurchasesFragment extends i<go, Cdo> implements go {
    private ProgressDialog Y;
    private g Z;
    @BindView
    AppCompatImageView mBackImageView;
    @BindView
    AppCompatTextView mNoProductsTextView;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    AppCompatTextView mRestoreTextView;

    class a implements ur {
        a() {
        }

        @Override // defpackage.ur
        public void a(sr<?, ?> srVar, View view, int i) {
            ((Cdo) ConsumePurchasesFragment.this.X).n(i);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        public void onClick(View view) {
            ((Cdo) ConsumePurchasesFragment.this.X).o();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        public void onClick(View view) {
            androidx.core.app.b.s0(ConsumePurchasesFragment.this.W, ConsumePurchasesFragment.class);
        }
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.i
    public void D0(View view, Bundle bundle) {
        P p = (P) n1(this);
        this.X = p;
        p.d(this);
        ProgressDialog progressDialog = new ProgressDialog(x());
        this.Y = progressDialog;
        progressDialog.setCanceledOnTouchOutside(false);
        this.mBackImageView.setColorFilter(-16777216);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this.U));
        RecyclerView recyclerView = this.mRecyclerView;
        g gVar = new g(this.U);
        this.Z = gVar;
        recyclerView.setAdapter(gVar);
        this.Z.J(new a());
        this.Y.show();
        this.mRestoreTextView.setOnClickListener(new b());
        this.mBackImageView.setOnClickListener(new c());
        ((Cdo) this.X).o();
    }

    @Override // defpackage.go
    public void a(List<j> list) {
        this.Z.H(list);
    }

    @Override // defpackage.go
    public void c(boolean z, String str) {
        ProgressDialog progressDialog = this.Y;
        if (progressDialog == null) {
            return;
        }
        if (z) {
            progressDialog.setMessage(str);
            this.Y.show();
            return;
        }
        progressDialog.dismiss();
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public String l1() {
        return "ConsumePurchasesFragment";
    }

    @Override // defpackage.go
    public void m(boolean z) {
        uq.t(this.mNoProductsTextView, z);
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public int m1() {
        return R.layout.b9;
    }

    /* Return type fixed from 'yn' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [fo] */
    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.i
    public Cdo n1(go goVar) {
        return new Cdo(goVar);
    }
}
