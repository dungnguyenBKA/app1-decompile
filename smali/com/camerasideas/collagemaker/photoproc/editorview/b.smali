.class public final synthetic Lcom/camerasideas/collagemaker/photoproc/editorview/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/b;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/editorview/b;->b:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->U()V

    return-void
.end method
