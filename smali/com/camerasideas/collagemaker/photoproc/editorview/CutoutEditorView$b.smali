.class Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->h(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->s0(F)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->m(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->i(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
