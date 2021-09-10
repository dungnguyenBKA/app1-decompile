.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;
.super Lsm;
.source "SourceFile"


# instance fields
.field private i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

.field mBtnNo:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnReport:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mErrDescriptionTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mInfoCodeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm;-><init>()V

    return-void
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mErrDescriptionTv:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "error report description"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mErrDescriptionTv:Landroid/widget/TextView;

    iget-object p2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2}, Luq;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lsm;->h0:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0e0080

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->y1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mInfoCodeTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mInfoCodeTv:Landroid/widget/TextView;

    iget-object p2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2}, Luq;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mBtnNo:Landroid/widget/Button;

    iget-object p2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p1, p2}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mBtnReport:Landroid/widget/Button;

    iget-object p2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p1, p2}, Luq;->x(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mBtnNo:Landroid/widget/Button;

    iget-object p2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2}, Luq;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->mBtnReport:Landroid/widget/Button;

    iget-object p2, p0, Lsm;->f0:Landroid/content/Context;

    invoke-static {p2}, Luq;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "AbsViewClickWrapper"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_1
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->b()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->b()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800b3

    if-eq v0, v1, :cond_1

    const p1, 0x7f0800ba

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsm;->u1()V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsm;->h0:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->y1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lsm;->h0:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    .line 5
    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;

    invoke-static {v0, v2}, Landroidx/core/app/b;->s0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "error report description"

    .line 7
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AbsViewClickWrapper"

    .line 8
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    const-class p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/l;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lsm;

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsm;->x1(Landroidx/fragment/app/g;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lsm;->u1()V

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ErrInfoCodeFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;->c()Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method public v1()Ljava/lang/String;
    .locals 1

    const-string v0, "ErrInfoCodeFragment"

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b0050

    return v0
.end method

.method protected y1()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error info code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
