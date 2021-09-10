.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;
.super Ltm;
.source "SourceFile"


# instance fields
.field private X:I

.field mBtnClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGuidLayout2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLottieView:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltm;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->X:I

    return-void
.end method


# virtual methods
.method public d0(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->d0(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->V()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-gtz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "GUID_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->X:I

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mGuidLayout2:Landroid/view/View;

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 8
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->X:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottie/magic/images"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->x(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottie/magic/data.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->u(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0e014f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mDesc:Landroid/widget/TextView;

    const v0, 0x7f0e0098

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottie/smooth/images"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->x(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottie/smooth/data.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->u(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0e0151

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mDesc:Landroid/widget/TextView;

    const v0, 0x7f0e0140

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottie/cutout/images"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->x(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottie/cutout/data.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->u(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0e014c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mDesc:Landroid/widget/TextView;

    const v0, 0x7f0e0054

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie/eraser/images"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->x(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie/eraser/data.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->u(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0e005e

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mDesc:Landroid/widget/TextView;

    const v1, 0x7f0e005f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mGuidLayout2:Landroid/view/View;

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 26
    :goto_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->s()V

    .line 27
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mBtnClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/e0;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/e0;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected m1()I
    .locals 1

    const v0, 0x7f0b0053

    return v0
.end method

.method public synthetic n1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltm;->W:Landroidx/appcompat/app/AppCompatActivity;

    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    invoke-static {p1, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public o0()V
    .locals 3

    .line 1
    invoke-super {p0}, Ltm;->o0()V

    .line 2
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->X:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const-string v2, "enableShowMagicGuide"

    .line 4
    invoke-static {v0, v2, v1}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const-string v2, "enableShowSmoothGuide"

    .line 6
    invoke-static {v0, v2, v1}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const-string v2, "enableShowCutoutGuide"

    .line 8
    invoke-static {v0, v2, v1}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Ltm;->U:Landroid/content/Context;

    const-string v2, "enableShowEraserGuide"

    .line 10
    invoke-static {v0, v2, v1}, Lic;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
