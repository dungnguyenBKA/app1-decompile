.class public Lcom/camerasideas/collagemaker/photoproc/crop/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/c;->a:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p2, Landroid/graphics/RectF;

    check-cast p3, Landroid/graphics/RectF;

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/c;->a:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v1, p1, v1}, Lic;->a(FFFF)F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2, p1, v2}, Lic;->a(FFFF)F

    move-result v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v3, p1, v3}, Lic;->a(FFFF)F

    move-result v3

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, p2

    mul-float p3, p3, p1

    add-float/2addr p3, p2

    invoke-virtual {v0, v1, v2, v3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/c;->a:Landroid/graphics/RectF;

    return-object p1
.end method
