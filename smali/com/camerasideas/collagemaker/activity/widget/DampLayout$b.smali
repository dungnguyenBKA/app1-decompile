.class Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/DampLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field final synthetic c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/DampLayout;Lcom/camerasideas/collagemaker/activity/widget/DampLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x104

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance p1, Lcom/camerasideas/collagemaker/activity/widget/i;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/widget/i;-><init>(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static a(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;Landroid/view/View;F)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    const/high16 v1, 0x43480000    # 200.0f

    aput v1, v0, p2

    .line 2
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->b:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->b:Landroid/view/View;

    return-object p0
.end method
