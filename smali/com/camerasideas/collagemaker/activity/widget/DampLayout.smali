.class public Lcom/camerasideas/collagemaker/activity/widget/DampLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->b:Landroid/view/View;

    .line 5
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->c:Landroid/view/View;

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->scrollTo(II)V

    :cond_0
    if-gez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    if-ge p1, v1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method private b(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    rsub-int v0, v0, 0xc8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    div-int/2addr p1, v0

    :goto_0
    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->d:Landroid/view/View;

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->scrollBy(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p2, -0x1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-lez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gez p3, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-gez p3, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    if-le v4, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-lez p3, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-nez v3, :cond_4

    if-nez p2, :cond_4

    if-nez v1, :cond_4

    if-eqz v4, :cond_7

    .line 6
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->pause()V

    .line 8
    :cond_5
    invoke-direct {p0, p3}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->b(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 9
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    :cond_6
    aput p3, p4, v0

    .line 12
    :cond_7
    invoke-direct {p0, p3, p1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->a(ILandroid/view/View;)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    cmpl-double p4, v0, v2

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p4

    int-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    cmpl-double p4, v0, v2

    if-nez p4, :cond_2

    :cond_0
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->f:Z

    if-nez p4, :cond_2

    if-lez p5, :cond_1

    const/16 p4, 0x190

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    int-to-float p4, p4

    invoke-static {v0, p1, p4}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->a(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;Landroid/view/View;F)V

    .line 4
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->f:Z

    .line 5
    :cond_2
    iget-boolean p4, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->f:Z

    if-eqz p4, :cond_3

    return-void

    :cond_3
    if-gez p5, :cond_4

    const/4 p4, -0x1

    .line 6
    invoke-virtual {p1, p4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p4

    if-nez p4, :cond_4

    const/4 p4, 0x1

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    if-lez p5, :cond_5

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-nez p4, :cond_6

    if-eqz p3, :cond_8

    .line 8
    :cond_6
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 9
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->pause()V

    .line 10
    :cond_7
    invoke-direct {p0, p5}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->b(I)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    :cond_8
    invoke-direct {p0, p5, p1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->a(ILandroid/view/View;)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;-><init>(Lcom/camerasideas/collagemaker/activity/widget/DampLayout;Lcom/camerasideas/collagemaker/activity/widget/DampLayout$a;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    instance-of p1, p2, Landroidx/recyclerview/widget/RecyclerView;

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->f:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->e:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->a(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    const/16 v0, 0x190

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const/16 p2, 0x190

    .line 1
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method
