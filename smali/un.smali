.class public Lun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltr;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lun;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lun;->c:I

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060237

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p2, p2

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    aput p2, v0, v2

    const/4 v2, 0x3

    aput p2, v0, v2

    const/4 v2, 0x4

    aput p2, v0, v2

    const/4 v2, 0x5

    aput p2, v0, v2

    const/4 v2, 0x6

    aput p2, v0, v2

    const/4 v2, 0x7

    aput p2, v0, v2

    .line 6
    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 7
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lun;->d:Landroid/graphics/drawable/ShapeDrawable;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p1, p0, Lun;->d:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object p1, p0, Lun;->d:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lun;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lun;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lun;->d:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lun;->b:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lun;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lun;->b:I

    return-void
.end method
