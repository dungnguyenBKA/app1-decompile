.class Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->g(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$a;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
