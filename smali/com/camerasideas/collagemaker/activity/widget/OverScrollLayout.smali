.class public Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:F

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->d:Z

    .line 5
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->f:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p2, 0x1

    .line 8
    :cond_0
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->g:Z

    return-void
.end method

.method private a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->A1()I

    move-result v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result v0

    sub-int/2addr v2, v0

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->g:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v3
.end method

.method private c()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x190

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->d:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/4 v3, 0x1

    cmpl-float v2, v0, v2

    if-gez v2, :cond_d

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v1, :cond_1

    return v3

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->d:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c()V

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->f:Z

    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    return v3

    .line 7
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->e:F

    .line 8
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->e:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 9
    iget-boolean v4, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->g:Z

    const/16 v5, -0x1e

    const/16 v6, 0x1e

    if-eqz v4, :cond_8

    if-gez v0, :cond_7

    if-ge v0, v5, :cond_7

    .line 10
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    if-le v0, v6, :cond_7

    .line 11
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 12
    :goto_2
    iget-boolean v7, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->g:Z

    if-eqz v7, :cond_a

    if-le v0, v6, :cond_9

    .line 13
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    if-gez v0, :cond_9

    if-ge v0, v5, :cond_9

    .line 14
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :goto_4
    if-nez v4, :cond_c

    if-eqz v5, :cond_b

    goto :goto_5

    .line 15
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->e:F

    .line 16
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->d:Z

    .line 17
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->f:Z

    .line 18
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 19
    :cond_c
    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 20
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    int-to-float p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 21
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, p1

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, p1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 22
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->d:Z

    .line 23
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->f:Z

    return v3

    .line 24
    :cond_d
    :goto_6
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->d:Z

    if-eqz p1, :cond_e

    .line 25
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c()V

    :cond_e
    return v3
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->c:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/camerasideas/collagemaker/activity/widget/OverScrollLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
