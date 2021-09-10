.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;
.super Ltm;
.source "SourceFile"


# instance fields
.field private X:Z

.field mBtnCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltm;-><init>()V

    return-void
.end method


# virtual methods
.method public B0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->B0()V

    .line 2
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->D()V

    :cond_0
    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ltm;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "DISCARD_DIALOG_FROM_FRAGMENT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->X:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->mBtnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Luq;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->mBtnCancel:Landroid/widget/TextView;

    iget-object p2, p0, Ltm;->U:Landroid/content/Context;

    invoke-static {p1, p2}, Luq;->w(Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method

.method public l1()Ljava/lang/String;
    .locals 1

    const-string v0, "ConfirmDiscardFragment"

    return-object v0
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0048

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080099

    if-eq p1, v0, :cond_2

    const v0, 0x7f0800a0

    if-eq p1, v0, :cond_0

    const v0, 0x7f0800ea

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "CutClick"

    const-string v1, "Discard"

    invoke-static {p1, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;->X:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->s0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    .line 5
    invoke-static {}, Lam;->a()Lam;

    move-result-object p1

    new-instance v0, Lcom/camerasideas/collagemaker/message/b;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/message/b;-><init>()V

    invoke-virtual {p1, v0}, Lam;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lqq;

    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0}, Lqq;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lqq;->a(Landroidx/appcompat/app/AppCompatActivity;Z)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public v0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->v0()V

    .line 2
    iget-object v0, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->u()V

    :cond_0
    return-void
.end method
