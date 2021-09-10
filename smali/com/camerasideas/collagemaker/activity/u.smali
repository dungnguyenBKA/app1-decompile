.class public final synthetic Lcom/camerasideas/collagemaker/activity/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/u;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/u;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/u;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/u;->c:Landroid/graphics/Bitmap;

    .line 1
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnChangeAlpha:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 2
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v2, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->h0(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->c()V

    return-void
.end method
