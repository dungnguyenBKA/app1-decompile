.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f080152

    const-string v2, "field \'mBtnClose\'"

    .line 4
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mBtnClose:Landroid/widget/ImageView;

    const v0, 0x7f0801aa

    const-string v1, "field \'mLottieView\'"

    .line 7
    const-class v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f080146

    const-string v1, "field \'mDesc\'"

    .line 11
    const-class v2, Landroid/widget/TextView;

    .line 12
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mDesc:Landroid/widget/TextView;

    const v0, 0x7f080148

    const-string v1, "field \'mTitle\'"

    .line 15
    const-class v2, Landroid/widget/TextView;

    .line 16
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0801ac

    const-string v1, "field \'mGuidLayout2\'"

    .line 19
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mGuidLayout2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mBtnClose:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mDesc:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mTitle:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;->mGuidLayout2:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
