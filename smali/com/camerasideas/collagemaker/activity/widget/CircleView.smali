.class public Lcom/camerasideas/collagemaker/activity/widget/CircleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Xfermode;

.field private q:I

.field private r:I

.field private s:F

.field private t:[F

.field private u:[F

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/RectF;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Path;

.field private z:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 3
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->g:I

    .line 4
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->i:I

    .line 5
    sget-object p3, Lcom/camerasideas/collagemaker/R$styleable;->b:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-ge p2, p3, :cond_c

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/16 v9, 0xa

    if-ne p3, v9, :cond_0

    .line 8
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->e:Z

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->e:Z

    goto/16 :goto_1

    :cond_0
    const/16 v9, 0x9

    if-ne p3, v9, :cond_1

    .line 9
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    goto/16 :goto_1

    :cond_1
    if-ne p3, v8, :cond_2

    .line 10
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    goto/16 :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 11
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->g:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->g:I

    goto :goto_1

    :cond_3
    if-ne p3, v7, :cond_4

    .line 12
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->h:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->h:I

    goto :goto_1

    :cond_4
    if-ne p3, v1, :cond_5

    .line 13
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->i:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->i:I

    goto :goto_1

    :cond_5
    if-ne p3, v2, :cond_6

    .line 14
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->j:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->j:I

    goto :goto_1

    :cond_6
    if-ne p3, v3, :cond_7

    .line 15
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->k:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->k:I

    goto :goto_1

    :cond_7
    if-ne p3, v6, :cond_8

    .line 16
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->l:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->l:I

    goto :goto_1

    :cond_8
    if-ne p3, v4, :cond_9

    .line 17
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->m:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->m:I

    goto :goto_1

    :cond_9
    if-ne p3, v5, :cond_a

    .line 18
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->n:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->n:I

    goto :goto_1

    :cond_a
    const/16 v1, 0xb

    if-ne p3, v1, :cond_b

    .line 19
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->o:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->o:I

    :cond_b
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 20
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-array p1, v7, [F

    .line 21
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->t:[F

    new-array p1, v7, [F

    .line 22
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->u:[F

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->w:Landroid/graphics/RectF;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_d

    .line 28
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->p:Landroid/graphics/Xfermode;

    goto :goto_2

    .line 29
    :cond_d
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->p:Landroid/graphics/Xfermode;

    .line 30
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->z:Landroid/graphics/Path;

    .line 31
    :goto_2
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    if-eqz p1, :cond_e

    goto :goto_4

    .line 32
    :cond_e
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->j:I

    const/high16 p2, 0x40000000    # 2.0f

    if-lez p1, :cond_f

    const/4 p1, 0x0

    .line 33
    :goto_3
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->t:[F

    array-length v1, p3

    if-ge p1, v1, :cond_10

    .line 34
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->j:I

    int-to-float v1, v1

    aput v1, p3, p1

    .line 35
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->u:[F

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    sub-float/2addr v1, v2

    aput v1, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 36
    :cond_f
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->t:[F

    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->k:I

    int-to-float p3, p3

    aput p3, p1, v8

    aput p3, p1, v0

    .line 37
    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->l:I

    int-to-float v7, v7

    aput v7, p1, v5

    aput v7, p1, v4

    .line 38
    iget v9, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->n:I

    int-to-float v9, v9

    aput v9, p1, v3

    aput v9, p1, v2

    .line 39
    iget v10, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->m:I

    int-to-float v10, v10

    aput v10, p1, v1

    aput v10, p1, v6

    .line 40
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->u:[F

    iget v11, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    int-to-float v11, v11

    div-float/2addr v11, p2

    sub-float/2addr p3, v11

    aput p3, p1, v8

    aput p3, p1, v0

    sub-float/2addr v7, v11

    .line 41
    aput v7, p1, v5

    aput v7, p1, v4

    sub-float/2addr v9, v11

    .line 42
    aput v9, p1, v3

    aput v9, p1, v2

    sub-float/2addr v10, v11

    .line 43
    aput v10, p1, v1

    aput v10, p1, v6

    .line 44
    :cond_10
    :goto_4
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    if-nez p1, :cond_11

    .line 45
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->h:I

    :cond_11
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, v8, p1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;IIF)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->l(II)V

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->q:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->r:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private l(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->q:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->r:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->s:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->u:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->p:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-gt v0, v3, :cond_1

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->z:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->z:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->z:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->o:I

    if-eqz v0, :cond_2

    .line 18
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    if-eqz v0, :cond_4

    .line 22
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    if-lez v0, :cond_3

    .line 23
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->g:I

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->s:F

    int-to-float v4, v0

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->k(Landroid/graphics/Canvas;IIF)V

    .line 24
    :cond_3
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->h:I

    if-lez v0, :cond_5

    .line 25
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->i:I

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->s:F

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->k(Landroid/graphics/Canvas;IIF)V

    goto :goto_2

    .line 26
    :cond_4
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    if-lez v0, :cond_5

    .line 27
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->g:I

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->w:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->t:[F

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->l(II)V

    .line 29
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 30
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->y:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->q:I

    .line 3
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->r:I

    .line 4
    iget-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    const/high16 p4, 0x40000000    # 2.0f

    if-nez p3, :cond_0

    .line 5
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->w:Landroid/graphics/RectF;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->f:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    int-to-float p1, p1

    sub-float/2addr p1, v0

    int-to-float p2, p2

    sub-float/2addr p2, v0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->d:Z

    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->q:I

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->r:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->s:F

    .line 8
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->q:I

    int-to-float p3, p3

    div-float/2addr p3, p4

    sub-float v0, p3, p1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->r:I

    int-to-float v1, v1

    div-float/2addr v1, p4

    sub-float p4, v1, p1

    add-float/2addr p3, p1

    add-float/2addr v1, p1

    invoke-virtual {p2, v0, p4, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->q:I

    int-to-float p2, p2

    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->r:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->e:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->w:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleView;->v:Landroid/graphics/RectF;

    :cond_2
    :goto_0
    return-void
.end method
