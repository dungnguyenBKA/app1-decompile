.class Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private final d:Landroid/graphics/Paint;

.field e:I

.field f:F

.field private g:I

.field private h:I

.field private i:Lcom/camerasideas/collagemaker/activity/widget/n;

.field final synthetic j:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->j:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    .line 4
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    .line 5
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 5
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_0

    .line 6
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v4

    int-to-float v2, v2

    mul-float v6, v6, v2

    add-float/2addr v6, v3

    float-to-int v2, v6

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v4, v1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f:F

    sub-float/2addr v5, v1

    int-to-float v0, v0

    mul-float v5, v5, v0

    add-float/2addr v5, v4

    float-to-int v1, v5

    move v0, v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 9
    :goto_0
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    if-eq v0, v2, :cond_3

    .line 10
    :cond_2
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    .line 11
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    .line 12
    sget v0, Lc3;->g:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3
    return-void
.end method


# virtual methods
.method a(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/n;->c()V

    .line 3
    :cond_0
    sget v0, Lc3;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g()V

    return-void

    .line 7
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v8

    .line 9
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_3

    .line 10
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    .line 11
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    move v5, v0

    move v7, v1

    goto :goto_3

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->j:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d(I)I

    move-result v1

    .line 13
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    if-ge p1, v2, :cond_4

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    :cond_5
    add-int/2addr v1, v8

    goto :goto_2

    :cond_6
    :goto_1
    sub-int v1, v6, v1

    :goto_2
    move v5, v1

    move v7, v5

    :goto_3
    if-ne v5, v6, :cond_7

    if-eq v7, v8, :cond_8

    .line 14
    :cond_7
    new-instance v0, Lcom/camerasideas/collagemaker/activity/widget/n;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/o;

    invoke-direct {v1}, Lcom/camerasideas/collagemaker/activity/widget/o;-><init>()V

    invoke-direct {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/n;-><init>(Lcom/camerasideas/collagemaker/activity/widget/n$f;)V

    .line 15
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    .line 16
    sget-object v1, Lcom/camerasideas/collagemaker/activity/widget/d;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/n;->k(Landroid/view/animation/Interpolator;)V

    int-to-long v1, p2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/n;->h(J)V

    const/4 p2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {v0, p2, v1}, Lcom/camerasideas/collagemaker/activity/widget/n;->i(FF)V

    .line 19
    new-instance p2, Lcom/camerasideas/collagemaker/activity/widget/a;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/camerasideas/collagemaker/activity/widget/a;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;IIII)V

    invoke-virtual {v0, p2}, Lcom/camerasideas/collagemaker/activity/widget/n;->b(Lcom/camerasideas/collagemaker/activity/widget/n$e;)V

    .line 20
    new-instance p2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c$a;

    invoke-direct {p2, p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c$a;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;I)V

    invoke-virtual {v0, p2}, Lcom/camerasideas/collagemaker/activity/widget/n;->a(Lcom/camerasideas/collagemaker/activity/widget/n$c;)V

    .line 21
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/n;->l()V

    :cond_8
    return-void
.end method

.method public b(IIIILcom/camerasideas/collagemaker/activity/widget/n;)V
    .locals 1

    .line 1
    invoke-virtual {p5}, Lcom/camerasideas/collagemaker/activity/widget/n;->d()F

    move-result p5

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/activity/widget/d;->a:Landroid/view/animation/Interpolator;

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p2, p2, p5

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr p4, p3

    int-to-float p1, p4

    mul-float p5, p5, p1

    .line 4
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p3

    .line 5
    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    if-ne p2, p3, :cond_0

    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    if-eq p1, p3, :cond_1

    .line 6
    :cond_0
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    .line 7
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    .line 8
    sget p1, Lc3;->g:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method c(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/n;->c()V

    .line 3
    :cond_0
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    .line 4
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f:F

    .line 5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g()V

    return-void
.end method

.method d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget p1, Lc3;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    if-le v1, v0, :cond_1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    .line 3
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->c:I

    if-lez v3, :cond_0

    if-le v1, v3, :cond_0

    sub-int/2addr v1, v3

    .line 4
    div-int/lit8 v2, v1, 0x2

    :cond_0
    add-int/2addr v0, v2

    int-to-float v4, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->b:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->h:I

    sub-int/2addr v0, v2

    int-to-float v6, v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->d:Landroid/graphics/Paint;

    move-object v3, p1

    .line 7
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method e(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->b:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->b:I

    .line 3
    sget p1, Lc3;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method f(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->c:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->c:I

    .line 3
    sget p1, Lc3;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/n;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/n;->c()V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/n;->f()J

    move-result-wide p1

    .line 5
    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e:I

    const/high16 p4, 0x3f800000    # 1.0f

    iget-object p5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->i:Lcom/camerasideas/collagemaker/activity/widget/n;

    .line 6
    invoke-virtual {p5}, Lcom/camerasideas/collagemaker/activity/widget/n;->d()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float p4, p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    invoke-virtual {p0, p3, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->a(II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->g()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->j:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iget v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget v0, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->s:I

    if-ne v0, v2, :cond_8

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gtz v4, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->j:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d(I)I

    move-result v3

    mul-int v5, v4, v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v4, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 12
    :cond_4
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 13
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->j:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    iput v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->s:I

    .line 15
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->o(Z)V

    :goto_2
    if-eqz v2, :cond_8

    .line 16
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8
    return-void
.end method
