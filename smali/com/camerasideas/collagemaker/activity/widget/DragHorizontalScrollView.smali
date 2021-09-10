.class public Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->f:I

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->b:Landroid/view/View;

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->c:Landroid/view/View;

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->e:Z

    return p1
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->d:Landroid/view/View;

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1f4

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->b:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->scrollBy(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

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
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    const/16 p2, 0x1f4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p3, -0x1

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-lez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 3
    sget v3, Lc3;->g:I

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gez p2, :cond_1

    .line 5
    sget v4, Lc3;->g:I

    .line 6
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-gez p2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 8
    sget v5, Lc3;->g:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-lez p2, :cond_3

    .line 10
    sget v6, Lc3;->g:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    .line 12
    :cond_4
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->f:I

    div-int v3, p2, v3

    invoke-virtual {p0, v3, v2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 13
    aput p2, p4, v2

    :cond_5
    if-lez p2, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p4

    if-le p4, v1, :cond_6

    .line 15
    sget p4, Lc3;->g:I

    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-nez p3, :cond_6

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->scrollTo(II)V

    :cond_6
    if-gez p2, :cond_7

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p2

    if-ge p2, v1, :cond_7

    .line 19
    sget p2, Lc3;->g:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->scrollTo(II)V

    :cond_7
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    instance-of p1, p2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$b;-><init>(Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView;Lcom/camerasideas/collagemaker/activity/widget/DragHorizontalScrollView$a;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    const/16 v0, 0x3e8

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x3e8

    .line 1
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method
