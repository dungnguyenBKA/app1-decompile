.class public Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Paint;

.field private D:Landroid/graphics/Paint;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/RectF;

.field private K:I

.field private L:F

.field private M:F

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

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

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->y:Z

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->z:I

    .line 5
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->O:Z

    .line 6
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->P:Z

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    .line 9
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->h:I

    .line 10
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->i:I

    const v0, -0xa5a6a9

    .line 11
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->n:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->o:I

    const/high16 v2, 0x55000000

    .line 13
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->q:I

    const/high16 v2, 0x40200000    # 2.5f

    .line 14
    invoke-direct {p0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v2

    iput v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->p:I

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->r:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->s:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    const/high16 v3, 0x41100000    # 9.0f

    .line 18
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->j:I

    const/high16 v3, 0x40c00000    # 6.0f

    .line 19
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->m:I

    const/4 v4, 0x2

    .line 20
    div-int/2addr v3, v4

    const/high16 v3, 0x41c00000    # 24.0f

    .line 21
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    div-int/2addr v3, v4

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->u:I

    const/high16 v3, 0x42080000    # 34.0f

    .line 22
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    div-int/2addr v3, v4

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->t:I

    const/high16 v3, 0x41600000    # 14.0f

    .line 23
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->v:I

    const/high16 v3, 0x41800000    # 16.0f

    .line 24
    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->w:I

    .line 25
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->D:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->D:Landroid/graphics/Paint;

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->p:I

    int-to-float v5, v5

    iget v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->r:I

    int-to-float v6, v6

    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->s:I

    int-to-float v7, v7

    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->q:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 28
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->C:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->B:Landroid/graphics/Paint;

    .line 31
    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->m:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->B:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 33
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->E:Landroid/graphics/Paint;

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->A:Landroid/graphics/Paint;

    .line 35
    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->m:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->A:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->A:Landroid/graphics/Paint;

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->p:I

    int-to-float v5, v5

    iget v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->r:I

    int-to-float v6, v6

    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->s:I

    int-to-float v7, v7

    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->q:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 38
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->G:Landroid/graphics/Paint;

    const/high16 v5, -0x60000000

    .line 39
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->w:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->p:I

    int-to-float v3, v3

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->r:I

    int-to-float v5, v5

    iget v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->s:I

    int-to-float v6, v6

    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->q:I

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->H:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->I:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->J:Landroid/graphics/RectF;

    const/high16 v0, 0x41200000    # 10.0f

    .line 48
    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->K:I

    .line 49
    sget-object v0, Lcom/camerasideas/collagemaker/R$styleable;->d:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->N:I

    .line 51
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->y:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    int-to-float v2, v1

    iget v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->f:I

    int-to-float v3, v1

    iget v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->e:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->A:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    int-to-float v9, v2

    iget v2, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->f:I

    int-to-float v10, v2

    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->e:I

    int-to-float v11, v3

    int-to-float v12, v2

    iget v13, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->n:I

    iget v14, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->o:I

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 3
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    int-to-float v2, v1

    iget v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->f:I

    int-to-float v3, v1

    iget v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->e:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->B:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->i:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->l:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 7
    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    if-ge v1, v3, :cond_0

    :goto_0
    move v1, v3

    goto :goto_1

    .line 8
    :cond_0
    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->e:I

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-float v3, v1

    .line 9
    iget v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->f:I

    int-to-float v4, v4

    iget v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->j:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->D:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 10
    iget-boolean v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->x:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->y:Z

    if-nez v3, :cond_2

    goto :goto_4

    .line 11
    :cond_2
    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->t:I

    sub-int v4, v1, v3

    add-int v5, v1, v3

    if-gez v4, :cond_3

    mul-int/lit8 v5, v3, 0x2

    :goto_2
    move v1, v3

    goto :goto_3

    .line 12
    :cond_3
    iget v2, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->b:I

    if-le v5, v2, :cond_4

    mul-int/lit8 v1, v3, 0x2

    sub-int v1, v2, v1

    sub-int v3, v2, v3

    move v5, v2

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v4

    .line 13
    :goto_3
    iget-object v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->J:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->g:I

    iget v6, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->u:I

    sub-int v8, v4, v6

    int-to-float v8, v8

    int-to-float v5, v5

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v3, v2, v8, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->J:Landroid/graphics/RectF;

    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->v:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->G:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 15
    iget v2, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->g:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    int-to-float v1, v1

    .line 17
    iget-object v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->F:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->c:I

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->b:I

    const/high16 v0, 0x42800000    # 64.0f

    .line 3
    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    .line 4
    invoke-direct {p0, v1}, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->a(F)I

    move-result v1

    .line 5
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->c:I

    const/high16 v3, -0x80000000

    if-lt v2, v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v3, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->c:I

    .line 7
    :cond_1
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->b:I

    if-lt p2, v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 8
    :cond_2
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->b:I

    .line 9
    :cond_3
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->b:I

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->c:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->j:I

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->p:I

    add-int v0, p1, p2

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    .line 11
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->b:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->e:I

    .line 12
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->c:I

    div-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->g:I

    .line 13
    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x3

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->N:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->f:I

    sub-int/2addr v1, v0

    .line 14
    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->l:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_8

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->x:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_5

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->O:Z

    const-string v4, "return false"

    const-string v5, "CustomSeekBar"

    if-nez v0, :cond_2

    .line 5
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->L:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 9
    iget v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->f:I

    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->j:I

    sub-int/2addr v6, v7

    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->p:I

    sub-int/2addr v6, v8

    iget v9, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->K:I

    sub-int/2addr v6, v9

    if-le v0, v6, :cond_3

    iget v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->c:I

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    add-int/2addr v6, v9

    if-ge v0, v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 10
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->L:F

    float-to-int v0, v0

    .line 13
    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->d:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->l:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->i:I

    int-to-float v4, v4

    mul-float v0, v0, v4

    int-to-float v4, v3

    add-float/2addr v0, v4

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    .line 15
    :cond_5
    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->h:I

    if-le v0, v4, :cond_6

    move v0, v4

    .line 16
    :cond_6
    :goto_1
    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    if-eq v0, v4, :cond_7

    .line 17
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    .line 18
    :cond_7
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->x:Z

    .line 19
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 20
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->L:F

    sub-float v0, p1, v0

    .line 21
    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->l:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->i:I

    int-to-float v5, v5

    mul-float v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    .line 22
    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    int-to-float v5, v4

    add-float/2addr v5, v0

    int-to-float v6, v3

    cmpg-float v7, v5, v6

    if-gez v7, :cond_9

    float-to-int v0, v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, v6

    .line 23
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    move v7, v6

    goto :goto_3

    .line 24
    :cond_9
    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->h:I

    int-to-float v7, v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_a

    sub-float/2addr v5, v7

    .line 25
    iput v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    goto :goto_3

    :cond_a
    float-to-int v5, v0

    add-int/2addr v5, v4

    int-to-float v7, v5

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    float-to-int v4, v0

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    :goto_2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->M:F

    .line 27
    :goto_3
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->P:Z

    if-nez v0, :cond_d

    .line 28
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->Q:I

    int-to-float v0, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v6

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->Q:I

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_c

    goto :goto_4

    .line 30
    :cond_c
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->Q:I

    .line 31
    :cond_d
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->P:Z

    if-eqz v0, :cond_e

    .line 32
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->P:Z

    move v7, v6

    .line 33
    :cond_e
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->P:Z

    if-nez v0, :cond_10

    .line 34
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->P:Z

    .line 35
    :cond_10
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    int-to-float v0, v0

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    goto :goto_4

    :cond_11
    float-to-int v0, v7

    .line 36
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->k:I

    .line 37
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->h:I

    if-eq v0, v1, :cond_13

    if-eqz v0, :cond_13

    if-eqz v0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->z:I

    invoke-static {v0, v1, v3}, Luq;->i(JI)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    const-string v0, "cutomseekbar"

    const-string v1, "setProgress"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 40
    :cond_13
    :goto_4
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomSeekBar;->L:F

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method
