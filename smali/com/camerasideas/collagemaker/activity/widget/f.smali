.class Lcom/camerasideas/collagemaker/activity/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/f;->a:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/f;->a:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->e(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F

    return-void
.end method
