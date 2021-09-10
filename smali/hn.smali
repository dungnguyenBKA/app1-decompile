.class public Lhn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:I

.field private e:Landroid/graphics/drawable/ShapeDrawable;

.field private f:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lhn;->a:I

    .line 4
    iput p2, p0, Lhn;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p3, p0, Lhn;->g:Z

    .line 7
    iput-object p1, p0, Lhn;->b:Ljava/lang/String;

    .line 8
    iput p2, p0, Lhn;->d:I

    .line 9
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060237

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/16 p3, 0x8

    new-array p3, p3, [F

    int-to-float p2, p2

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    const/4 v1, 0x2

    aput p2, p3, v1

    const/4 v1, 0x3

    aput p2, p3, v1

    const/4 v1, 0x4

    aput p2, p3, v1

    const/4 v1, 0x5

    aput p2, p3, v1

    const/4 v1, 0x6

    aput p2, p3, v1

    const/4 v1, 0x7

    aput p2, p3, v1

    .line 10
    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1, p3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 11
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p3, p0, Lhn;->e:Landroid/graphics/drawable/ShapeDrawable;

    .line 12
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lhn;->e:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, Lhn;->e:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/camerasideas/collagemaker/filter/ISCropFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn;->f:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn;->e:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lhn;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lhn;->d:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn;->g:Z

    return v0
.end method

.method public h(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhn;->c:Landroid/net/Uri;

    return-void
.end method

.method public i(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhn;->f:Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhn;->a:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhn;->d:I

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lhn;->g:Z

    return-void
.end method
