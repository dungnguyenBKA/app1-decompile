.class public Lvc0;
.super Ltc0;
.source "SourceFile"


# instance fields
.field private final a:Loc0;

.field private final b:Landroid/graphics/Point;

.field private final c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:Landroid/graphics/Matrix;

.field private i:Lmc0;

.field private j:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Loc0;Lmc0;Landroid/graphics/Point;FFLandroid/graphics/Rect;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltc0;-><init>()V

    const/4 p7, 0x0

    .line 2
    iput p7, p0, Lvc0;->g:I

    .line 3
    iput-object p1, p0, Lvc0;->a:Loc0;

    .line 4
    iput-object p3, p0, Lvc0;->b:Landroid/graphics/Point;

    .line 5
    iput p4, p0, Lvc0;->d:F

    .line 6
    iput p5, p0, Lvc0;->c:F

    .line 7
    iput-object p2, p0, Lvc0;->i:Lmc0;

    .line 8
    iput-object p6, p0, Lvc0;->j:Landroid/graphics/Rect;

    .line 9
    invoke-direct {p0}, Lvc0;->e()V

    return-void
.end method

.method public static d(Lmc0;Landroid/graphics/Rect;Landroid/content/Context;)Lvc0;
    .locals 9

    .line 1
    new-instance v1, Loc0;

    invoke-direct {v1}, Loc0;-><init>()V

    .line 2
    new-instance v8, Lvc0;

    new-instance v3, Landroid/graphics/Point;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1, v0}, Loc0;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Loc0;->a(I)I

    move-result v2

    invoke-direct {v3, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 4
    invoke-virtual {v1, v0}, Loc0;->c(F)F

    move-result v2

    div-float/2addr v2, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v0

    const v0, 0x3fc90fdb

    add-float/2addr v2, v0

    const v0, 0x3d4ccccd    # 0.05f

    sub-float v4, v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40800000    # 4.0f

    .line 5
    invoke-virtual {v1, v0, v2}, Loc0;->b(FF)F

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/app/b;->v(Landroid/content/Context;F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    move-object v0, v8

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lvc0;-><init>(Loc0;Lmc0;Landroid/graphics/Point;FFLandroid/graphics/Rect;Landroid/content/Context;)V

    return-object v8
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvc0;->a:Loc0;

    iget-object v1, p0, Lvc0;->i:Lmc0;

    invoke-virtual {v1}, Lmc0;->c()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Loc0;->b(FF)F

    move-result v0

    float-to-int v0, v0

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lvc0;->h:Landroid/graphics/Matrix;

    .line 3
    iget-object v1, p0, Lvc0;->i:Lmc0;

    invoke-virtual {v1, v0}, Lmc0;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lvc0;->f:Landroid/graphics/Bitmap;

    .line 4
    iget-object v0, p0, Lvc0;->a:Loc0;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v1}, Loc0;->b(FF)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lvc0;->e:F

    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 6

    .line 1
    iget-object p1, p0, Lvc0;->b:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, p1

    iget p1, p0, Lvc0;->c:F

    float-to-double v2, p1

    iget p1, p0, Lvc0;->d:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    iget p1, p0, Lvc0;->e:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    double-to-int p1, v4

    .line 2
    iget-object v0, p0, Lvc0;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, p0, Lvc0;->c:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iget v4, p0, Lvc0;->d:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    double-to-int v0, v4

    .line 3
    iget v1, p0, Lvc0;->d:F

    iget-object v2, p0, Lvc0;->a:Loc0;

    const/high16 v3, -0x3e380000    # -25.0f

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3, v4}, Loc0;->b(FF)F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, p0, Lvc0;->d:F

    .line 4
    iget-object v1, p0, Lvc0;->b:Landroid/graphics/Point;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Point;->set(II)V

    .line 5
    iget-object p1, p0, Lvc0;->j:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lvc0;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 6
    iget-object v1, p0, Lvc0;->b:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 7
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-lt v2, v3, :cond_0

    if-gt v2, p1, :cond_0

    if-lt v1, v3, :cond_0

    if-ge v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lvc0;->j:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 9
    iget-object v0, p0, Lvc0;->b:Landroid/graphics/Point;

    iget-object v1, p0, Lvc0;->a:Loc0;

    invoke-virtual {v1, p1}, Loc0;->a(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 10
    iget-object p1, p0, Lvc0;->b:Landroid/graphics/Point;

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 11
    iget-object p1, p0, Lvc0;->a:Loc0;

    invoke-virtual {p1, v4}, Loc0;->c(F)F

    move-result p1

    div-float/2addr p1, v4

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    const v0, 0x3fc90fdb

    add-float/2addr p1, v0

    const v0, 0x3d4ccccd    # 0.05f

    sub-float/2addr p1, v0

    iput p1, p0, Lvc0;->d:F

    .line 12
    :cond_1
    iget p1, p0, Lvc0;->g:I

    add-int/2addr p1, v5

    iput p1, p0, Lvc0;->g:I

    .line 13
    iget-object p1, p0, Lvc0;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 14
    iget-object p1, p0, Lvc0;->h:Landroid/graphics/Matrix;

    iget v0, p0, Lvc0;->g:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 15
    iget-object p1, p0, Lvc0;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lvc0;->b:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvc0;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lvc0;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lvc0;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lvc0;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method
