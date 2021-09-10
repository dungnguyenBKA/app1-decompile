.class public Lcom/camerasideas/collagemaker/photoproc/crop/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[F

.field private b:Landroid/graphics/Matrix;

.field private c:[F

.field private d:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->a:[F

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->b:Landroid/graphics/Matrix;

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->c:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->d:[F

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->d:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->a:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->c:[F

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->d:[F

    const/4 v0, 0x0

    aget v1, p3, v0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->a:[F

    aget v3, v2, v0

    aget v4, p3, v0

    invoke-static {v3, v4, p1, v1}, Lic;->a(FFFF)F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 5
    aget v1, p3, v0

    aget v3, v2, v0

    aget v4, p3, v0

    invoke-static {v3, v4, p1, v1}, Lic;->a(FFFF)F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x2

    .line 6
    aget v1, p3, v0

    aget v3, v2, v0

    aget v4, p3, v0

    invoke-static {v3, v4, p1, v1}, Lic;->a(FFFF)F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x3

    .line 7
    aget v1, p3, v0

    aget v3, v2, v0

    aget v4, p3, v0

    invoke-static {v3, v4, p1, v1}, Lic;->a(FFFF)F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x4

    .line 8
    aget v1, p3, v0

    aget v3, v2, v0

    aget v4, p3, v0

    invoke-static {v3, v4, p1, v1}, Lic;->a(FFFF)F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x5

    .line 9
    aget v1, p3, v0

    aget v2, v2, v0

    aget v3, p3, v0

    invoke-static {v2, v3, p1, v1}, Lic;->a(FFFF)F

    move-result p1

    aput p1, p2, v0

    const/4 p1, 0x6

    .line 10
    aget v0, p3, p1

    aput v0, p2, p1

    const/4 p1, 0x7

    .line 11
    aget v0, p3, p1

    aput v0, p2, p1

    const/16 p1, 0x8

    .line 12
    aget p3, p3, p1

    aput p3, p2, p1

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/d;->b:Landroid/graphics/Matrix;

    return-object p1
.end method
