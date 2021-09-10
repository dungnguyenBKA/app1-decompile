.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment$a;
.super Lcom/camerasideas/collagemaker/activity/widget/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment$a;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;->mCutoutSeekbarModeLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method
