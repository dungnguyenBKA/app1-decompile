.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioX:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mRatioY:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f050045

    invoke-static {p1, p3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    iget-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->mBtnSubmit:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f050046

    invoke-static {p1, p3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
