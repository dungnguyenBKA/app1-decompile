.class Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;
.super Lap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-direct {p0}, Lap$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lap;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lap;->b()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float p1, p1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->p(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lfp;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lfp;->b(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;F)F

    move-result p1

    .line 8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->p(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lfp;

    move-result-object v3

    invoke-virtual {v3}, Lfp;->c()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->q(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;Z)Z

    .line 9
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f()F

    move-result v2

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g()F

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->v(FFF)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->m(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float p1, p1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$e;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    :goto_1
    return v1
.end method
