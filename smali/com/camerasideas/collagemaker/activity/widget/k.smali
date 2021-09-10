.class Lcom/camerasideas/collagemaker/activity/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/k;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/k;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->g(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
