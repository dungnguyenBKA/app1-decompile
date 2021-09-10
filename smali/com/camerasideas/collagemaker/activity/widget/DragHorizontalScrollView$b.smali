.class Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:F

.field final synthetic c:Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;->b:F

    const/4 p2, 0x1

    .line 3
    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->a(Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;Z)Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;->b:F

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0}, Lic;->a(FFFF)F

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;

    .line 3
    sget v0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->g:I

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    rsub-int v0, v0, 0x1f4

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;

    invoke-static {p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->a(Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;Z)Z

    :cond_0
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 p1, 0x104

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
