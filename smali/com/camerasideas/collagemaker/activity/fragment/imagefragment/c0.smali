.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c0;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/c0;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    .line 1
    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->b0:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->m0(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
