.class public final synthetic Lcom/camerasideas/collagemaker/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie0;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/r;->a:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/r;->a:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    .line 1
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->c()V

    .line 2
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->m()V

    .line 4
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->H()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/camerasideas/collagemaker/activity/m;

    invoke-direct {v2, v0, v1}, Lcom/camerasideas/collagemaker/activity/m;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lml;->h(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
