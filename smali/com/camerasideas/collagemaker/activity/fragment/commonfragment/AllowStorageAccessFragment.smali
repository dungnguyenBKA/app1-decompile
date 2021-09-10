.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;
.super Lsm;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;
    }
.end annotation


# instance fields
.field private i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;

.field mBtnClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnOK:Landroid/view/View;
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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnOK:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnClose:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnClose:Landroid/widget/ImageView;

    const-string p2, "#e2e2e2"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsm;->u1()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->mBtnOK:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;->a()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;->onDismiss()V

    :cond_0
    return-void
.end method

.method public v1()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected w1()I
    .locals 1

    const v0, 0x7f0b002c

    return v0
.end method

.method public y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment;->i0:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/AllowStorageAccessFragment$a;

    return-void
.end method
