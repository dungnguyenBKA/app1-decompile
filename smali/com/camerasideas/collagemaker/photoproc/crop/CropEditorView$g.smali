.class Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/MotionEvent;FFFF)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/MotionEvent;FFF)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->r(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v1, p2, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    div-float p2, v0, p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->A(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Z)Z

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p3}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    sget-object v1, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->g:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    return-void
.end method
