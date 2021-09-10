.class Landroidx/transition/i;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/View;

.field final d:Landroid/view/View;

.field e:I

.field private f:Landroid/graphics/Matrix;

.field private final g:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroidx/transition/i$a;

    invoke-direct {v0, p0}, Landroidx/transition/i$a;-><init>(Landroidx/transition/i;)V

    iput-object v0, p0, Landroidx/transition/i;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3
    iput-object p1, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static b(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/i;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 2
    sget v0, Landroidx/transition/g;->d:I

    const v0, 0x7f08013e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/g;

    const v1, 0x7f08013d

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/transition/g;

    if-eq v3, v0, :cond_0

    .line 6
    iget v2, v1, Landroidx/transition/i;->e:I

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_3

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 11
    invoke-static {v1, p2}, Landroidx/transition/b0;->h(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 13
    invoke-static {p1, p2}, Landroidx/transition/b0;->i(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 14
    :cond_1
    new-instance v1, Landroidx/transition/i;

    invoke-direct {v1, p0}, Landroidx/transition/i;-><init>(Landroid/view/View;)V

    .line 15
    iput-object p2, v1, Landroidx/transition/i;->f:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 16
    new-instance v0, Landroidx/transition/g;

    invoke-direct {v0, p1}, Landroidx/transition/g;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0}, Landroidx/transition/g;->c()V

    .line 18
    :goto_0
    invoke-static {p1, v0}, Landroidx/transition/i;->c(Landroid/view/View;Landroid/view/View;)V

    .line 19
    invoke-static {p1, v1}, Landroidx/transition/i;->c(Landroid/view/View;Landroid/view/View;)V

    .line 20
    invoke-virtual {v0, v1}, Landroidx/transition/g;->a(Landroidx/transition/i;)V

    .line 21
    iput v2, v1, Landroidx/transition/i;->e:I

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 22
    iput-object p2, v1, Landroidx/transition/i;->f:Landroid/graphics/Matrix;

    .line 23
    :cond_4
    :goto_1
    iget p0, v1, Landroidx/transition/i;->e:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Landroidx/transition/i;->e:I

    return-object v1

    .line 24
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    .line 5
    invoke-static {p1, v0, v1, v3, p0}, Landroidx/transition/b0;->e(Landroid/view/View;IIII)V

    return-void
.end method

.method static d(Landroid/view/View;)Landroidx/transition/i;
    .locals 1

    const v0, 0x7f08013d

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/i;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/i;->b:Landroid/view/ViewGroup;

    .line 2
    iput-object p2, p0, Landroidx/transition/i;->c:Landroid/view/View;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const v1, 0x7f08013d

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/i;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/transition/b0;->g(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/i;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/b0;->g(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const v1, 0x7f08013d

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Landroidx/transition/a;->b(Landroid/graphics/Canvas;Z)V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/b0;->g(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroidx/transition/b0;->g(Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 7
    invoke-static {p1, v1}, Landroidx/transition/a;->b(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/i;->d(Landroid/view/View;)Landroidx/transition/i;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Landroidx/transition/i;->d:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/b0;->g(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
