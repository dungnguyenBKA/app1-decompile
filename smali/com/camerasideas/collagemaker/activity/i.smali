.class public final synthetic Lcom/camerasideas/collagemaker/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/i;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/i;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    .line 1
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    const-wide/16 v1, 0x32

    .line 4
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->n:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/j;

    invoke-direct {v2, v0}, Lcom/camerasideas/collagemaker/activity/j;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
