.class Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/ImageCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Landroid/os/Handler;

.field final synthetic d:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->d:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->b:Ljava/lang/Runnable;

    .line 3
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/h;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/h;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->c:Landroid/os/Handler;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/h;

    invoke-direct {v2, p0}, Lcom/camerasideas/collagemaker/activity/h;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    throw v0
.end method
