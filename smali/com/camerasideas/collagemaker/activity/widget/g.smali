.class Lcom/camerasideas/collagemaker/activity/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->c:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->a:F

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->c:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->c:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->a:F

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->a(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->b:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->d(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/g;->c:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
