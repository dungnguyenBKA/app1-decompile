.class Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->y(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    move-result-object v0

    sget-object v1, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    sget-object v1, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->e:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    sget-object v1, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-static {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    return-void
.end method
