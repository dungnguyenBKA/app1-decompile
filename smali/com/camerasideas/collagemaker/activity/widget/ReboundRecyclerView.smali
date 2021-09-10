.class public Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/OverScroller;

.field private c:Landroid/view/VelocityTracker;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Landroidx/recyclerview/widget/RecyclerView;

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x3e8

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->g:I

    const p2, 0x3f0ccccd    # 0.55f

    .line 3
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->h:F

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->k:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x3e8

    .line 7
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->g:I

    const p2, 0x3f0ccccd    # 0.55f

    .line 8
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->h:F

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->k:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->d:I

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->e:I

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->f:I

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->j:F

    sub-float/2addr v2, v0

    .line 4
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->j:F

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->f:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->k:Z

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->k:Z

    if-nez v0, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->k:Z

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->j:F

    .line 13
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 6
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->j:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 7
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->j:F

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p1

    .line 9
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    sub-int/2addr v2, p1

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v4

    neg-int v4, v4

    if-gez v0, :cond_4

    if-gez v4, :cond_2

    .line 11
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v4, v2

    .line 12
    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->h:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, v3}, Landroid/widget/FrameLayout;->scrollBy(II)V

    sub-int/2addr v0, v2

    if-ltz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    neg-int p1, p1

    .line 13
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 14
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    sub-int/2addr v0, p1

    if-ltz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    int-to-float p1, v0

    .line 15
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->h:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, v3}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto/16 :goto_2

    :cond_4
    if-lez v0, :cond_e

    if-lez v4, :cond_5

    .line 16
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v4, p1

    .line 17
    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->h:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, v3}, Landroid/widget/FrameLayout;->scrollBy(II)V

    sub-int/2addr v0, p1

    if-gtz v0, :cond_5

    goto/16 :goto_2

    .line 18
    :cond_5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 19
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    sub-int/2addr v0, p1

    if-gtz v0, :cond_6

    goto/16 :goto_2

    :cond_6
    int-to-float p1, v0

    .line 20
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->h:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, v3}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto/16 :goto_2

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    const/16 v0, 0x258

    .line 22
    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->e:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 23
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->d:I

    if-le v0, v4, :cond_b

    .line 25
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 26
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez p1, :cond_9

    if-gtz v0, :cond_a

    :cond_9
    if-gez p1, :cond_b

    if-lez v4, :cond_b

    .line 27
    :cond_a
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->i:Landroidx/recyclerview/widget/RecyclerView;

    neg-int p1, p1

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 28
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    .line 29
    :cond_c
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->b:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    neg-int v6, p1

    const/4 v7, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0x12c

    .line 31
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 32
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->g:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 33
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 35
    :goto_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 36
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->c:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 38
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/ReboundRecyclerView;->j:F

    :cond_e
    :goto_2
    return v1
.end method
