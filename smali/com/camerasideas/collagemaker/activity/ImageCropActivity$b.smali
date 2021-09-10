.class Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/ImageCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2001

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2003

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    const v0, 0x7f0e012b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    const v0, 0x7f0e0072

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    const v0, 0x7f0e012c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method
