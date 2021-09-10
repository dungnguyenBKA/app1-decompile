.class Landroidx/cardview/widget/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cardview/widget/g$a;
    }
.end annotation


# static fields
.field private static final q:D

.field static r:Landroidx/cardview/widget/g$a;


# instance fields
.field private final a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/RectF;

.field private f:F

.field private g:Landroid/graphics/Path;

.field private h:F

.field private i:F

.field private j:F

.field private k:Landroid/content/res/ColorStateList;

.field private l:Z

.field private final m:I

.field private final n:I

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroidx/cardview/widget/g;->q:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->l:Z

    .line 3
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->o:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/cardview/widget/g;->p:Z

    const v2, 0x7f05004f

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Landroidx/cardview/widget/g;->m:I

    const v2, 0x7f05004e

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Landroidx/cardview/widget/g;->n:I

    const v2, 0x7f06005b

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/cardview/widget/g;->a:I

    .line 8
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    if-nez p2, :cond_0

    .line 9
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    .line 10
    iget-object v2, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    iget-object v5, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    .line 12
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p3, p2

    float-to-int p3, p3

    int-to-float p3, p3

    .line 13
    iput p3, p0, Landroidx/cardview/widget/g;->f:F

    .line 14
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    .line 15
    new-instance p3, Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-direct {p3, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p3, p0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p3, ". Must be >= 0"

    const/4 v1, 0x0

    cmpg-float v2, p4, v1

    if-ltz v2, :cond_7

    cmpg-float v1, p5, v1

    if-ltz v1, :cond_6

    add-float/2addr p4, p2

    float-to-int p3, p4

    .line 17
    rem-int/lit8 p4, p3, 0x2

    if-ne p4, v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    int-to-float p3, p3

    add-float/2addr p5, p2

    float-to-int p4, p5

    .line 18
    rem-int/lit8 p5, p4, 0x2

    if-ne p5, v0, :cond_2

    add-int/lit8 p4, p4, -0x1

    :cond_2
    int-to-float p4, p4

    cmpl-float p5, p3, p4

    if-lez p5, :cond_4

    .line 19
    iget-boolean p3, p0, Landroidx/cardview/widget/g;->p:Z

    if-nez p3, :cond_3

    .line 20
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->p:Z

    :cond_3
    move p3, p4

    .line 21
    :cond_4
    iget p5, p0, Landroidx/cardview/widget/g;->j:F

    cmpl-float p5, p5, p3

    if-nez p5, :cond_5

    iget p5, p0, Landroidx/cardview/widget/g;->h:F

    cmpl-float p5, p5, p4

    if-nez p5, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    iput p3, p0, Landroidx/cardview/widget/g;->j:F

    .line 23
    iput p4, p0, Landroidx/cardview/widget/g;->h:F

    const/high16 p4, 0x3fc00000    # 1.5f

    mul-float p3, p3, p4

    int-to-float p1, p1

    add-float/2addr p3, p1

    add-float/2addr p3, p2

    float-to-int p1, p3

    int-to-float p1, p1

    .line 24
    iput p1, p0, Landroidx/cardview/widget/g;->i:F

    .line 25
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->l:Z

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid max shadow size "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid shadow size "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    sget-wide v4, Landroidx/cardview/widget/g;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-float p0, v2

    :cond_0
    return p0
.end method

.method static b(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float p0, p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    sget-wide v4, Landroidx/cardview/widget/g;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0

    :cond_0
    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cardview/widget/g;->f:F

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-boolean v1, v0, Landroidx/cardview/widget/g;->l:Z

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    iget v4, v0, Landroidx/cardview/widget/g;->h:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v5, v5, v4

    .line 4
    iget-object v6, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    iget v12, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    iget v13, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v13, v5

    iget v14, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v14, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    invoke-virtual {v6, v12, v13, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    iget v4, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v4

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 7
    iget v5, v0, Landroidx/cardview/widget/g;->i:F

    neg-float v5, v5

    invoke-virtual {v4, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 8
    iget-object v5, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    if-nez v5, :cond_0

    .line 9
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 11
    :goto_0
    iget-object v5, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 12
    iget-object v5, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget v6, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v5, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget v6, v0, Landroidx/cardview/widget/g;->i:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 14
    iget-object v5, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v10, v8, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 15
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v1, v9, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 16
    iget-object v1, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 17
    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    iget v4, v0, Landroidx/cardview/widget/g;->i:F

    add-float/2addr v4, v1

    div-float/2addr v1, v4

    .line 18
    iget-object v4, v0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RadialGradient;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v6, v0, Landroidx/cardview/widget/g;->f:F

    iget v12, v0, Landroidx/cardview/widget/g;->i:F

    add-float v15, v6, v12

    const/4 v6, 0x3

    new-array v12, v6, [I

    iget v8, v0, Landroidx/cardview/widget/g;->m:I

    aput v8, v12, v3

    aput v8, v12, v2

    iget v8, v0, Landroidx/cardview/widget/g;->n:I

    const/16 v19, 0x2

    aput v8, v12, v19

    new-array v8, v6, [F

    aput v11, v8, v3

    aput v1, v8, v2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v8, v19

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v12

    move-object v12, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    iget-object v1, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v21, 0x0

    iget v5, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v5

    iget v8, v0, Landroidx/cardview/widget/g;->i:F

    add-float v22, v5, v8

    const/16 v23, 0x0

    sub-float v24, v5, v8

    new-array v5, v6, [I

    iget v8, v0, Landroidx/cardview/widget/g;->m:I

    aput v8, v5, v3

    aput v8, v5, v2

    iget v8, v0, Landroidx/cardview/widget/g;->n:I

    aput v8, v5, v19

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v20, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 20
    iget-object v1, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iput-boolean v3, v0, Landroidx/cardview/widget/g;->l:Z

    .line 22
    :cond_1
    iget v1, v0, Landroidx/cardview/widget/g;->j:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    invoke-virtual {v7, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v4, v1

    iget v5, v0, Landroidx/cardview/widget/g;->i:F

    sub-float v12, v4, v5

    .line 24
    iget v4, v0, Landroidx/cardview/widget/g;->a:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, v0, Landroidx/cardview/widget/g;->j:F

    div-float/2addr v4, v8

    add-float v13, v4, v1

    .line 25
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v14, v13, v8

    sub-float/2addr v1, v14

    cmpl-float v1, v1, v11

    if-lez v1, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    .line 26
    :goto_1
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v14

    cmpl-float v1, v1, v11

    if-lez v1, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 27
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 28
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-object v1, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_4

    const/4 v2, 0x0

    .line 30
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    .line 31
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v1

    iget-object v3, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v12

    move v11, v6

    move-object/from16 v6, v17

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    move v11, v6

    .line 33
    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 35
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 37
    iget-object v1, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_5

    const/4 v2, 0x0

    .line 38
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    .line 39
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v1, v1

    iget v3, v0, Landroidx/cardview/widget/g;->i:F

    add-float v5, v1, v3

    iget-object v6, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    :cond_5
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 43
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 45
    iget-object v1, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_6

    const/4 v2, 0x0

    .line 46
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    .line 47
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v1

    iget-object v6, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    .line 48
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    :cond_6
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 51
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 52
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 53
    iget-object v1, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_7

    const/4 v2, 0x0

    .line 54
    iget-object v1, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    .line 55
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v1

    iget-object v6, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    .line 56
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    :cond_7
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 58
    iget v1, v0, Landroidx/cardview/widget/g;->j:F

    neg-float v1, v1

    div-float/2addr v1, v8

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    sget-object v1, Landroidx/cardview/widget/g;->r:Landroidx/cardview/widget/g$a;

    iget-object v2, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    iget v3, v0, Landroidx/cardview/widget/g;->f:F

    iget-object v4, v0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-interface {v1, v7, v2, v3, v4}, Landroidx/cardview/widget/g$a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method e()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cardview/widget/g;->h:F

    return v0
.end method

.method f()F
    .locals 5

    .line 1
    iget v0, p0, Landroidx/cardview/widget/g;->h:F

    iget v1, p0, Landroidx/cardview/widget/g;->f:F

    iget v2, p0, Landroidx/cardview/widget/g;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v4

    .line 2
    iget v1, p0, Landroidx/cardview/widget/g;->h:F

    mul-float v1, v1, v2

    iget v2, p0, Landroidx/cardview/widget/g;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method g()F
    .locals 4

    .line 1
    iget v0, p0, Landroidx/cardview/widget/g;->h:F

    iget v1, p0, Landroidx/cardview/widget/g;->f:F

    iget v2, p0, Landroidx/cardview/widget/g;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v3, v1

    .line 2
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    .line 3
    iget v1, p0, Landroidx/cardview/widget/g;->h:F

    iget v3, p0, Landroidx/cardview/widget/g;->a:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/cardview/widget/g;->h:F

    iget v1, p0, Landroidx/cardview/widget/g;->f:F

    iget-boolean v2, p0, Landroidx/cardview/widget/g;->o:Z

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/g;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2
    iget v1, p0, Landroidx/cardview/widget/g;->h:F

    iget v2, p0, Landroidx/cardview/widget/g;->f:F

    iget-boolean v3, p0, Landroidx/cardview/widget/g;->o:Z

    invoke-static {v1, v2, v3}, Landroidx/cardview/widget/g;->a(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 3
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method h()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cardview/widget/g;->j:F

    return v0
.end method

.method i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/cardview/widget/g;->o:Z

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

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

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/cardview/widget/g;->l:Z

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/cardview/widget/g;->l:Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
