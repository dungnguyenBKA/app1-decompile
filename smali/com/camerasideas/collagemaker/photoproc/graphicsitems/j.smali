.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;
.super Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private A:Landroid/text/TextPaint;

.field private B:Landroid/text/TextPaint;

.field private C:Landroid/text/TextPaint;

.field private D:Landroid/text/StaticLayout;

.field private E:Landroid/text/StaticLayout;

.field private F:Landroid/text/StaticLayout;

.field private G:I

.field private H:I

.field private I:I

.field private J:F

.field private K:Landroid/graphics/BlurMaskFilter;

.field private L:I

.field private M:Landroid/graphics/Shader;

.field private N:Landroid/graphics/Shader;

.field private O:Landroid/graphics/Shader;

.field private P:Landroid/graphics/drawable/Drawable;

.field private x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I:I

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->q:I

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->L:I

    return-void
.end method

.method private E(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->q:I

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    int-to-float v1, v1

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    .line 5
    iget v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    add-float/2addr v4, v5

    .line 6
    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 7
    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 8
    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v5

    int-to-float v5, v5

    .line 9
    new-instance v6, Landroid/graphics/RectF;

    neg-int v7, v0

    int-to-float v7, v7

    sub-float/2addr v7, v5

    neg-float v8, v5

    sub-float/2addr v1, v3

    add-float/2addr v1, v5

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v4, v0

    add-float/2addr v4, v5

    invoke-direct {v6, v7, v8, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c()Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 12
    iget v3, v6, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v6, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v6, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    .line 19
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O()V

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d()Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x41800000    # -0.25f

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result v0

    const/16 v7, 0x64

    if-gt v0, v7, :cond_3

    .line 24
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->N:Landroid/graphics/Shader;

    if-nez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q()F

    move-result v7

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->N:Landroid/graphics/Shader;

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->D()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_2

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 34
    :goto_2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 35
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, -0x41800000    # -0.25f

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 36
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x42480000    # 50.0f

    div-float/2addr v0, v7

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v8

    int-to-float v8, v8

    mul-float v0, v0, v8

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->F:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v8

    int-to-float v8, v8

    mul-float v0, v0, v8

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v7}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v8, v7

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->E:Landroid/text/StaticLayout;

    if-nez v0, :cond_8

    .line 41
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K()V

    .line 42
    :cond_8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 44
    iget-wide v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v7

    double-to-float v0, v0

    .line 45
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    .line 46
    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 49
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O:Landroid/graphics/Shader;

    if-nez v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_4

    .line 54
    :cond_a
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 55
    :goto_4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 56
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, -0x41800000    # -0.25f

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 57
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 58
    :cond_c
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x()F

    move-result v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 60
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->M:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->D()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_6

    .line 64
    :cond_d
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFlags(I)V

    .line 65
    :goto_6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 66
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result v1

    if-eqz v1, :cond_e

    const/high16 v5, -0x41800000    # -0.25f

    :cond_e
    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 67
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private I(Landroid/text/TextPaint;Ljava/lang/String;)F
    .locals 5

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private K()V
    .locals 9

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v2

    invoke-static {v1, v2}, Lc2;->c(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    if-gez v0, :cond_3

    .line 12
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    .line 13
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget v4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v5

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->E:Landroid/text/StaticLayout;

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    return-void
.end method

.method private P(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->M:Landroid/graphics/Shader;

    .line 2
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->M:Landroid/graphics/Shader;

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->N:Landroid/graphics/Shader;

    .line 7
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->N:Landroid/graphics/Shader;

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O:Landroid/graphics/Shader;

    .line 12
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v4

    invoke-static {v1, v4}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O:Landroid/graphics/Shader;

    .line 16
    :cond_2
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result p1

    .line 19
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->H(I)V

    .line 20
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "TextItem"

    const-string v0, "onSelectedGradientChanged failed: drawable == null"

    .line 21
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 22
    :cond_3
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 24
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqn;

    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {v5}, Lpn;->a()I

    move-result v6

    if-ne v6, p1, :cond_7

    .line 26
    invoke-virtual {v5}, Lqn;->c()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lhp;->a(Landroid/graphics/drawable/GradientDrawable$Orientation;F)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    invoke-virtual {v5}, Lqn;->b()[I

    move-result-object v1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    .line 27
    array-length v2, v1

    if-gtz v2, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 29
    :cond_5
    :goto_1
    instance-of p1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 31
    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_6
    move-object v1, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_8
    :goto_2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_3
    return-void
.end method

.method private Q()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v3, 0x5

    .line 2
    aget v4, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    .line 3
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    int-to-float v0, v0

    iget v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->q:I

    iget v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    add-int v7, v5, v6

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    add-float/2addr v7, v0

    .line 4
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    add-int v9, v5, v6

    int-to-float v9, v9

    mul-float v9, v9, v8

    add-float/2addr v9, v0

    add-int/2addr v5, v6

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v0

    int-to-float v0, v0

    .line 8
    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    neg-int v10, v5

    int-to-float v10, v10

    sub-float/2addr v10, v0

    aput v10, v6, v2

    neg-float v11, v0

    .line 9
    aput v11, v6, v4

    int-to-float v4, v5

    sub-float/2addr v7, v4

    add-float/2addr v7, v0

    .line 10
    aput v7, v6, v1

    const/4 v4, 0x3

    .line 11
    aput v11, v6, v4

    const/4 v11, 0x4

    .line 12
    aput v7, v6, v11

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v9, v5

    add-float/2addr v9, v0

    .line 13
    aput v9, v6, v3

    const/4 v0, 0x6

    .line 14
    aput v10, v6, v0

    const/4 v0, 0x7

    .line 15
    aput v9, v6, v0

    .line 16
    aget v0, v6, v1

    aget v1, v6, v2

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    const/16 v1, 0x8

    aput v0, v6, v1

    .line 17
    aget v0, v6, v3

    aget v1, v6, v4

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    const/16 v1, 0x9

    aput v0, v6, v1

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method


# virtual methods
.method public D()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->z:Landroid/graphics/Paint;

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    iput-object v0, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    .line 5
    iget-wide v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    iput-wide v2, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    .line 9
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->L:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->w(FF)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method public F()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    const-string v1, "Center"

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_0

    const-string v1, "Left"

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_2

    const-string v1, "Right"

    :cond_2
    :goto_0
    return-object v1
.end method

.method public G()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    return-object v0
.end method

.method public J(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->q:I

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    .line 3
    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->y:Landroid/graphics/Paint;

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->y:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->y:Landroid/graphics/Paint;

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->y:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    .line 10
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->y()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v2

    invoke-static {v1, v2}, Lc2;->c(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 16
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    if-gez v2, :cond_3

    .line 18
    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_2
    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    .line 19
    :cond_3
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v7

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D:Landroid/text/StaticLayout;

    .line 20
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    .line 21
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K()V

    .line 22
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    .line 23
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 24
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 25
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v3

    invoke-static {v2, v3}, Lc2;->c(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 26
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    if-lt p1, v1, :cond_4

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 30
    :cond_4
    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    if-gez p1, :cond_6

    .line 31
    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_5
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    .line 32
    :cond_6
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->F:Landroid/text/StaticLayout;

    .line 33
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O()V

    .line 34
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 35
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 37
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 38
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 39
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, p1, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K:Landroid/graphics/BlurMaskFilter;

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 42
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->Q()V

    return-void
.end method

.method public L(Landroid/graphics/Canvas;FFF)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->p:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/16 v4, 0x8

    aget v4, v3, v4

    const/16 v5, 0x9

    aget v3, v3, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p2, p2, v1, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->E(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public M(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    return-void
.end method

.method public N(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 2
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->K:Landroid/graphics/BlurMaskFilter;

    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->R(Z)V

    .line 6
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->P(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method public R(Z)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v3

    invoke-static {v2, v3}, Lc2;->c(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v3

    invoke-static {v2, v3}, Lc2;->c(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 5
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v3

    invoke-static {v2, v3}, Lc2;->c(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->O()V

    .line 8
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    .line 9
    :cond_1
    iget v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    if-gez v1, :cond_3

    .line 10
    iget v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H:I

    if-nez v1, :cond_2

    iget v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    :cond_2
    iput v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    .line 11
    :cond_3
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->A:Landroid/text/TextPaint;

    iget v5, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v6

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D:Landroid/text/StaticLayout;

    .line 12
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->B:Landroid/text/TextPaint;

    iget v13, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v14

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->E:Landroid/text/StaticLayout;

    .line 13
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->C:Landroid/text/TextPaint;

    iget v5, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->G:I

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v6

    iget-object v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->x:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->F:Landroid/text/StaticLayout;

    .line 14
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->J:F

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->Q()V

    return-void
.end method

.method public bridge synthetic a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->w:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->E(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->D()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->w:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    .line 6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->y:Landroid/graphics/Paint;

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    double-to-float v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x4

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v1, v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->I:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public k()Landroid/graphics/RectF;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v2, v2, v4

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v4, 0x5

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v3, v3, v5

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 5
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v6, v0, v2

    div-float/2addr v3, v5

    sub-float v5, v1, v3

    add-float/2addr v0, v2

    add-float/2addr v1, v3

    invoke-direct {v4, v6, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public s(FF)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->r([F)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v1, v1, v2

    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v4, v4, v6

    invoke-direct {v1, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v6, 0x4

    aget v6, v5, v6

    const/4 v7, 0x5

    aget v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v7, 0x6

    aget v7, v6, v7

    const/4 v8, 0x7

    aget v6, v6, v8

    invoke-direct {v5, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    invoke-virtual {p0, v0, v1, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    .line 11
    invoke-virtual {p0, v1, v4, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p2

    .line 12
    invoke-virtual {p0, v4, v5, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    .line 13
    invoke-virtual {p0, v5, v0, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    :cond_2
    return v3
.end method

.method public u(FFF)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method
