.class Lcom/google/android/material/floatingactionbutton/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/c$b;
    }
.end annotation


# instance fields
.field private final a:Lry;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private final g:Lcom/google/android/material/floatingactionbutton/c$b;

.field h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lqy;

.field private p:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lqy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lry;

    invoke-direct {v0}, Lry;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Lry;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Lcom/google/android/material/floatingactionbutton/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/c$b;-><init>(Lcom/google/android/material/floatingactionbutton/c;Lcom/google/android/material/floatingactionbutton/c$a;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Lcom/google/android/material/floatingactionbutton/c$b;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    .line 11
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/RectF;

    return-object v0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public c(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->h:F

    .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method d(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->i:I

    .line 2
    iput p2, p0, Lcom/google/android/material/floatingactionbutton/c;->j:I

    .line 3
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/c;->k:I

    .line 4
    iput p4, p0, Lcom/google/android/material/floatingactionbutton/c;->l:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 5
    iget v2, p0, Lcom/google/android/material/floatingactionbutton/c;->h:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x6

    new-array v9, v3, [I

    .line 6
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->i:I

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    invoke-static {v4, v5}, Lk1;->b(II)I

    move-result v4

    const/4 v12, 0x0

    aput v4, v9, v12

    .line 7
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->j:I

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    invoke-static {v4, v5}, Lk1;->b(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v9, v5

    .line 8
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->j:I

    .line 9
    invoke-static {v4, v12}, Lk1;->d(II)I

    move-result v4

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    .line 10
    invoke-static {v4, v6}, Lk1;->b(II)I

    move-result v4

    const/4 v6, 0x2

    aput v4, v9, v6

    .line 11
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->l:I

    .line 12
    invoke-static {v4, v12}, Lk1;->d(II)I

    move-result v4

    iget v7, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    .line 13
    invoke-static {v4, v7}, Lk1;->b(II)I

    move-result v4

    const/4 v7, 0x3

    aput v4, v9, v7

    .line 14
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->l:I

    iget v8, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    invoke-static {v4, v8}, Lk1;->b(II)I

    move-result v4

    const/4 v8, 0x4

    aput v4, v9, v8

    .line 15
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->k:I

    iget v10, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    invoke-static {v4, v10}, Lk1;->b(II)I

    move-result v4

    const/4 v10, 0x5

    aput v4, v9, v10

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v12

    aput v2, v3, v5

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v3, v6

    aput v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    aput v2, v3, v8

    aput v4, v3, v10

    .line 16
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18
    iput-boolean v12, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 20
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 21
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 22
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    .line 23
    invoke-virtual {v2}, Lqy;->k()Liy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v3}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v2

    .line 24
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lqy;->n(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 27
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public e(Lqy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Lcom/google/android/material/floatingactionbutton/c$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->n(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    invoke-virtual {v0}, Lqy;->k()Liy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->a:Lry;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Landroid/graphics/Path;

    const/4 v6, 0x0

    .line 7
    invoke-virtual/range {v2 .. v7}, Lry;->a(Lqy;FLandroid/graphics/RectF;Lry$a;Landroid/graphics/Path;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Lqy;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->n(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    .line 5
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:Z

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
